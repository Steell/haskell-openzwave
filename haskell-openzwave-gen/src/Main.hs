{-# LANGUAGE FlexibleContexts #-}
module Main where

import Foreign.Hoppy.Generator.Main (defaultMain)
import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std (mod_std)
import Foreign.Hoppy.Generator.Std.String
import qualified Foreign.Hoppy.Generator.Std.Vector as Vector

e_NotificationType :: CppEnum
e_NotificationType = addReqIncludes [ includeStd "Notification.h" ] $
    makeEnum (ident2 "OpenZWave" "Notification" "NotificationType")
             Nothing
             (zip [0 ..]
                  [ [ "value", "added" ]
                  , [ "value", "removed" ]
                  , [ "value", "changed" ]
                  , [ "value", "refreshed" ]
                  , [ "group" ]
                  , [ "new", "node" ]
                  , [ "node", "added" ]
                  , [ "node", "removed" ]
                  , [ "node", "protocol", "info" ]
                  , [ "node", "naming" ]
                  , [ "node", "event" ]
                  , [ "polling", "disabled" ]
                  , [ "polling", "enabled" ]
                  , [ "scene", "event" ]
                  , [ "create", "button" ]
                  , [ "delete", "button" ]
                  , [ "button", "on" ]
                  , [ "button", "off" ]
                  , [ "driver", "ready" ]
                  , [ "driver", "failed" ]
                  , [ "driver", "reset" ]
                  , [ "essential", "node", "queries", "complete" ]
                  , [ "node", "queries", "complete" ]
                  , [ "awake", "nodes", "queried" ]
                  , [ "all", "nodes", "queried", "some", "dead" ]
                  , [ "all", "nodes", "queried" ]
                  , [ "notification" ]
                  , [ "driver", "removed" ]
                  , [ "controller", "command" ]
                  , [ "node", "reset" ]
                  ])

e_ValueGenre :: CppEnum
e_ValueGenre = addReqIncludes [ includeStd "ValueID.h" ] $
    makeEnum (ident2 "OpenZWave" "ValueID" "ValueGenre")
             Nothing
             (zip [0 ..]
                  [ [ "basic" ]
                  , [ "user" ]
                  , [ "config" ]
                  , [ "system" ]
                  , [ "count" ]
                  ])

e_ValueType :: CppEnum
e_ValueType = addReqIncludes [ includeStd "ValueID.h" ] $
    makeEnum (ident2 "OpenZWave" "ValueID" "ValueType") Nothing values
  where
    base = zip [0 ..]
               [ [ "bool" ]
               , [ "byte" ]
               , [ "decimal" ]
               , [ "int" ]
               , [ "list" ]
               , [ "schedule" ]
               , [ "short" ]
               , [ "string" ]
               , [ "button" ]
               , [ "raw" ]
               ]
    values = base ++ [ (lastIdx, [ "max" ]) ]
    (lastIdx, _) = base !! (length base - 1)


c_ValueID :: Class
c_ValueID = addReqIncludes [ includeStd "ValueID.h" ] $
    classAddFeatures [ Comparable, Equatable ] $
        makeClass (ident1 "OpenZWave" "ValueID")
                  Nothing
                  []
                  [ mkCtor "new"
                           [ constT word32T
                           , constT word8T
                           , constT (enumT e_ValueGenre)
                           , constT word8T
                           , constT word8T
                           , constT word8T
                           , constT (enumT e_ValueType)
                           ]
                  , mkCtor "unpack" [ word32T, word64T ]
                  , m "GetHomeId" word32T
                  , m "GetNodeId" word8T
                  , m "GetGenre" (enumT e_ValueGenre)
                  , m "GetCommandClassId" word8T
                  , m "GetInstance" word8T
                  , m "GetIndex" word8T
                  , m "GetType" (enumT e_ValueType)
                  , m "GetId" word64T
                  ]
  where
    m s = mkConstMethod s []

c_Notification :: Class
c_Notification = addReqIncludes [ includeStd "Notification.h" ] $
    makeClass (ident1 "OpenZWave" "Notification")
              Nothing
              []
              [ m "GetType" (enumT e_NotificationType)
              , m "GetHomeId" uintT
              , wm "GetNodeId"
              , m "GetValueId" (refT (constT (objT c_ValueID)))
              , wm "GetGroupIdx"
              , wm "GetEvent"
              , wm "GetButtonId"
              , wm "GetSceneId"
              --, wm "GetNotification"
              , wm "GetByte"
              , m "GetAsString" stringT
              ]
  where
    m s = mkConstMethod s []
    wm s = m s word8T

cb_OnNotification :: Callback
cb_OnNotification = makeCallback (toExtName "HaskellOnNotificationCallback")
                                 [ ptrT (constT (objT c_Notification))
                                 , ptrT voidT
                                 ]
                                 voidT

stringT = objT c_string

c_Options :: Class
c_Options = addReqIncludes [ includeStd "Options.h" ] $
    makeClass (ident1 "OpenZWave" "Options")
              Nothing
              []
              [ mkStaticMethod "Create"
                               [ refT (constT stringT)
                               , refT (constT stringT)
                               , refT (constT stringT)
                               ]
                               (ptrT (objT c_Options))
              , mkStaticMethod "Destroy" [] boolT
              , mkStaticMethod "Get" [] (ptrT (objT c_Options))
              , mkMethod "Lock" [] boolT
              , mkMethod "AddOptionBool"
                         [ refT (constT stringT), constT boolT ]
                         boolT
              , mkMethod "AddOptionInt"
                         [ refT (constT stringT), constT int32T ]
                         boolT
              , mkMethod "AddOptionString"
                         [ refT (constT stringT)
                         , refT (constT stringT)
                         , constT boolT
                         ]
                         boolT
              , mkMethod "GetOptionAsBool"
                         [ refT (constT stringT), ptrT boolT ]
                         boolT
              , mkMethod "GetOptionAsInt"
                         [ refT (constT stringT), ptrT int32T ]
                         boolT
              , mkMethod "GetOptionAsString"
                         [ refT (constT stringT), ptrT stringT ]
                         boolT
              , mkMethod "GetOptionType"
                         [ refT (constT stringT) ]
                         (enumT e_OptionType)
              , mkConstMethod "AreLocked" [] boolT
              ]

e_OptionType :: CppEnum
e_OptionType = addReqIncludes [ includeStd "Options.h" ] $
    makeEnum (ident2 "OpenZWave" "Options" "OptionType") Nothing
        $ zip [0 ..] [ [ "Invalid" ], [ "Bool" ], [ "Int" ], [ "String" ] ]


c_Manager :: Class
c_Manager =
  addReqIncludes [includeStd "Manager.h"] $
  makeClass
    (ident1 "OpenZWave" "Manager")
    Nothing
    []
    [ mkStaticMethod "Create" [] (ptrT (objT c_Manager))
    , mkStaticMethod "Get" [] (ptrT (objT c_Manager))
    , mkStaticMethod "Destroy" [] voidT
    , mkStaticMethod "getVersionAsString" [] stringT
    , mkStaticMethod "getVersionAsLongString" [] stringT
    -- TODO: Need to figure out how to do c structs
    --, static ozwversion getVersion ()
    -- Configuration
    , mkMethod "WriteConfig" [constT homeIdT] voidT
    , mkConstMethod "GetOptions" [] (ptrT (objT c_Options))
    -- Drivers
    , mkMethod
        "AddDriver"
        [ refT (constT stringT)
        -- has default, so this can be omited
        --, refT (constT (enumT e_Driver_ControllerInterface))
        ]
        boolT
    , mkMethod "RemoveDriver" [refT (constT stringT)] boolT
    , mkMethod "GetControlleNodeId" [constT homeIdT] nodeIdT
    , mkMethod "GetSUCNodeId" [constT homeIdT] nodeIdT
    , mkMethod "IsPrimaryController" [constT homeIdT] boolT
    , mkMethod "IsStaticUpdateController" [constT homeIdT] boolT
    , mkMethod "IsBridgeController" [constT homeIdT] boolT
    , mkMethod "GetLibraryVersion" [constT homeIdT] stringT
    , mkMethod "GetLibraryTypeName" [constT homeIdT] stringT
    , mkMethod "GetSendQueueCount" [constT homeIdT] int32T
    , mkMethod "LogDriverStatistics" [constT homeIdT] voidT
    --, mkMethod "GetControllerInterfaceType" [constT homeIdT] (enumT e_DriverControllerInterface)
    , mkMethod "GetControllerPath" [constT homeIdT] stringT
    -- Polling Z-Wave Devices
    , mkMethod "GetPollInterval" [] int32T
    , mkMethod "SetPollInterval" [int32T, boolT] voidT
    , mkMethod' "EnablePoll" "enablePoll" [constRefValueID] boolT
    , mkMethod' "EnablePoll" "enablePoll_" [constRefValueID, word8T] boolT
    , mkMethod "DisablePoll" [constRefValueID] boolT
    , mkMethod "isPolled" [constRefValueID] boolT
    , mkMethod "SetPollIntensity" [constRefValueID, constT word8T] voidT
    , mkMethod "GetPollIntensity" [constRefValueID] word8T
    -- Node information
    , mkMethod "RefreshNodeInfo" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "RefreshNodeState" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "RequestNodeDynamic" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeListeningDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod
        "IsNodeFrequentListeningDevice"
        [constT homeIdT, constT nodeIdT]
        boolT
    , mkMethod "IsNodeBeamingDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeRoutingDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeSecurityDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "GetNodeMaxBaudRate" [constT homeIdT, constT nodeIdT] word32T
    , mkMethod "GetNodeVersion" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod "GetNodeSecurity" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod "IsNodeZWavePlus" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "GetNodeBasic" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod "GetNodeGeneric" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod "GetNodeSpecific" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod "GetNodeType" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod
        "GetNodeNeighbors"
        [constT homeIdT, constT nodeIdT, ptrT (ptrT word8T)]
        word32T
    , mkMethod
        "GetNodeManufacturerName"
        [constT homeIdT, constT nodeIdT]
        stringT
    , mkMethod "GetNodeProductName" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodeName" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodeLocation" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodeManufacturerId" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodeProductType" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodeProductId" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod
        "SetNodeManufacturerName"
        [constT homeIdT, constT nodeIdT, refT (constT stringT)]
        voidT
    , mkMethod
        "SetNodeProductName"
        [constT homeIdT, constT nodeIdT, refT (constT stringT)]
        voidT
    , mkMethod
        "SetNodeName"
        [constT homeIdT, constT nodeIdT, refT (constT stringT)]
        voidT
    , mkMethod
        "SetNodeLocation"
        [constT homeIdT, constT nodeIdT, refT (constT stringT)]
        voidT
    , mkMethod "SetNodeOn" [constT homeIdT, constT nodeIdT] voidT
    , mkMethod "SetNodeOff" [constT homeIdT, constT nodeIdT] voidT
    , mkMethod
        "SetNodeLevel"
        [constT homeIdT, constT nodeIdT, constT word8T]
        voidT
    , mkMethod "IsNodeInfoReceived" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod'
        "GetNodeClassInformation"
        "getNodeClassInformation"
        [constT homeIdT, constT nodeIdT, constT word8T]
        boolT
    , mkMethod'
        "GetNodeClassInformation"
        "getNodeClassInformation_"
        [ constT homeIdT
        , constT nodeIdT
        , constT word8T
        , ptrT (constT stringT)
        , ptrT (constT stringT)
        ]
        boolT
    , mkMethod "IsNodeAwake" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeFailed" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "GetNodeQueryStage" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodeDeviceType" [constT homeIdT, constT nodeIdT] word16T
    , mkMethod
        "GetNodeDeviceTypeString"
        [constT homeIdT, constT nodeIdT]
        stringT
    , mkMethod "GetNodeRole" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod "GetNodeRoleString" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodePlusType" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod "GetNodePlusTypeString" [constT homeIdT, constT nodeIdT] stringT
    -- Values
    , mkMethod "GetValueLabel" [constRefValueID] stringT
    , mkMethod "SetValueLabel" [constRefValueID, refT (constT stringT)] voidT
    , mkMethod "GetValueUnits" [constRefValueID] stringT
    , mkMethod "SetValueUnits" [constRefValueID, refT (constT stringT)] voidT
    , mkMethod "GetValueHelp" [constRefValueID] stringT
    , mkMethod "SetValueHelp" [constRefValueID, refT (constT stringT)] voidT
    , mkMethod "GetValueMin" [constRefValueID] int32T
    , mkMethod "GetValueMax" [constRefValueID] int32T
    , mkMethod "IsValueReadOnly" [constRefValueID] boolT
    , mkMethod "IsValueWriteOnly" [constRefValueID] boolT
    , mkMethod "IsValueSet" [constRefValueID] boolT
    , mkMethod "IsValuePolled" [constRefValueID] boolT
    , mkMethod "GetValueAsBool" [constRefValueID, ptrT boolT] boolT
    , mkMethod "GetValueAsByte" [constRefValueID, ptrT word8T] boolT
    , mkMethod "GetValueAsFloat" [constRefValueID, ptrT floatT] boolT
    , mkMethod "GetValueAsInt" [constRefValueID, ptrT int32T] boolT
    , mkMethod "GetValueAsShort" [constRefValueID, ptrT int16T] boolT
    , mkMethod "GetValueAsString" [constRefValueID, ptrT stringT] boolT
    , mkMethod
        "GetValueAsRaw"
        [constRefValueID, ptrT (ptrT word8T), ptrT word8T]
        boolT
    , mkMethod'
        "GetValueListSelection"
        "GetValueListSelectionString"
        [constRefValueID, ptrT stringT]
        boolT
    , mkMethod'
        "GetValueListSelection"
        "GetValueListSelection"
        [constRefValueID, ptrT int32T]
        boolT
    , mkMethod
        "GetValueListItems"
        [constRefValueID, ptrT (objT c_stringVector)]
        boolT
    , mkMethod
        "GetValueListValues"
        [constRefValueID, ptrT (objT c_intVector)]
        boolT
    , mkMethod "GetValueFloatPrecision" [constRefValueID, ptrT word8T] boolT
    , mkMethod' "SetValue" "setBoolValue" [constRefValueID, constT boolT] boolT
    , mkMethod' "SetValue" "setByteValue" [constRefValueID, constT word8T] boolT
    , mkMethod'
        "SetValue"
        "setFloatValue"
        [constRefValueID, constT floatT]
        boolT
    , mkMethod' "SetValue" "setIntValue" [constRefValueID, constT int32T] boolT
    , mkMethod'
        "SetValue"
        "setShortValue"
        [constRefValueID, constT int16T]
        boolT
    , mkMethod'
        "SetValue"
        "setRawValue"
        [constRefValueID, ptrT (constT word8T), constT word8T]
        boolT
    , mkMethod'
        "SetValue"
        "SetStringValue"
        [constRefValueID, constT stringT]
        boolT
    , mkMethod
        "SetValueListSelection"
        [constRefValueID, refT (constT stringT)]
        boolT
    , mkMethod "RefreshValue" [constRefValueID] boolT
    , mkMethod "SetChangeVerified" [constRefValueID, boolT] voidT
    , mkMethod "GetChangeVerified" [constRefValueID] boolT
    , mkMethod "PressButton" [constRefValueID] boolT
    , mkMethod "ReleaseButton" [constRefValueID] boolT
    -- Climate Control Schedules
    , mkMethod "GetNumSwitchPoints" [constRefValueID] word8T
    , mkMethod
        "SetSwitchPoint"
        [constRefValueID, constT word8T, constT word8T, constT int8T]
        boolT
    , mkMethod
        "RemoveSwitchPoint"
        [constRefValueID, constT word8T, constT word8T]
        boolT
    , mkMethod "ClearSwitchPoints" [constRefValueID] voidT
    , mkMethod
        "GetSwitchPoint"
        [constRefValueID, constT word8T, ptrT word8T, ptrT word8T, ptrT int8T]
        boolT
    -- SwitchAll
    , mkMethod "SwitchAllOn" [constT homeIdT] voidT
    , mkMethod "SwitchAllOff" [constT homeIdT] voidT
    -- Configuration Parameters
    , mkMethod'
        "SetConfigParam"
        "setConfigParam_"
        [constT homeIdT, constT nodeIdT, constT word8T, int32T, constT word8T]
        boolT
    , mkMethod'
        "SetConfigParam"
        "setConfigParam"
        [constT homeIdT, constT nodeIdT, constT word8T, int32T]
        boolT
    , mkMethod
        "RequestConfigParam"
        [constT homeIdT, constT nodeIdT, constT word8T]
        voidT
    , mkMethod "RequestAllConfigParams" [constT homeIdT, constT nodeIdT] voidT
    -- Groups
    , mkMethod "GetNumGroups" [constT homeIdT, constT nodeIdT] word8T
    , mkMethod'
        "GetAssociations"
        "getAssociations_"
        [constT homeIdT, constT nodeIdT, constT word8T, ptrT (ptrT word8T)]
        word32T
    -- TODO: structs?
    {-, mkMethod'
        "GetAssociations"
        "getAssociations"
        [ constT homeIdT
        , constT nodeIdT
        , constT word8T
        , ptrT (ptrT (objT c_InstanceAssociation))
        ]
        word32T -}
    , mkMethod
        "GetMaxAssociations"
        [constT homeIdT, constT nodeIdT, constT word8T]
        word8T
    , mkMethod
        "GetGroupLabel"
        [constT homeIdT, constT nodeIdT, constT word8T]
        stringT
    , mkMethod
        "AddAssociation"
        [ constT homeIdT
        , constT nodeIdT
        , constT word8T
        , constT word8T
        , constT word8T
        ]
        voidT
    , mkMethod
        "RemoveAssociation"
        [ constT homeIdT
        , constT nodeIdT
        , constT word8T
        , constT word8T
        , constT word8T
        ]
        voidT
    -- Notifications
    , mkMethod "AddWatcher" [callbackT cb_OnNotification, ptrT voidT] boolT
    , mkMethod "RemoveWatcher" [callbackT cb_OnNotification, ptrT voidT] boolT
    -- Controller Commands
    , mkMethod "ResetController" [constT homeIdT] voidT
    , mkMethod "SoftReset" [constT homeIdT] voidT
    , mkMethod "CancelControllerCommand" [constT homeIdT] boolT
    -- Network Commands
    , mkMethod
        "TestNetworkNode"
        [constT homeIdT, constT nodeIdT, constT word32T]
        voidT
    , mkMethod "TestNetwork" [constT homeIdT, constT word32T] voidT
    , mkMethod "HealNetworkNode" [constT homeIdT, constT nodeIdT, boolT] voidT
    , mkMethod "HealNetwork" [constT homeIdT, boolT] voidT
    , mkMethod "AddNode" [constT homeIdT, boolT] boolT
    , mkMethod "RemoveNode" [constT homeIdT] boolT
    , mkMethod "RemoveFailedNode" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "HasNodeFailed" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod
        "RequestNodeNeighborUpdate"
        [constT homeIdT, constT nodeIdT]
        boolT
    , mkMethod "AssignReturnRoute" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "DeleteAllReturnRoutes" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "SendNodeInformation" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "CreateNewPrimary" [constT homeIdT] boolT
    , mkMethod "ReceiveConfiguration" [constT homeIdT] boolT
    , mkMethod "ReplaceFailedNode" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "TransferPrimaryRole" [constT homeIdT] boolT
    , mkMethod "RequestNetworkUpdate" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "ReplicationSend" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod
        "CreateButton"
        [constT homeIdT, constT nodeIdT, constT word8T]
        boolT
    , mkMethod
        "DeleteButton"
        [constT homeIdT, constT nodeIdT, constT word8T]
        boolT
    -- Scene Commands
    , mkMethod "GetNumScenes" [] word8T
    , mkMethod "GetAllScenes" [ptrT (ptrT word8T)] word8T
    , mkMethod "RemoveAllScenes" [constT homeIdT] voidT
    , mkMethod "CreateScene" [] word8T
    , mkMethod "RemoveScene" [constT word8T] boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneBoolValue"
        [constT word8T, constRefValueID, constT boolT]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneByteValue"
        [constT word8T, constRefValueID, constT word8T]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneFloatValue"
        [constT word8T, constRefValueID, constT floatT]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneIntValue"
        [constT word8T, constRefValueID, constT int32T]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneShortValue"
        [constT word8T, constRefValueID, constT int16T]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneStringValue"
        [constT word8T, constRefValueID, refT (constT stringT)]
        boolT
    , mkMethod'
        "AddSceneValueListSelection"
        "addSceneValueListSelectionString"
        [constT word8T, constRefValueID, refT (constT stringT)]
        boolT
    , mkMethod'
        "AddSceneValueListSelection"
        "addSceneValueListSelectionBool"
        [constT word8T, constRefValueID, constT int32T]
        boolT
    , mkMethod "RemoveSceneValue" [constT word8T, constRefValueID] boolT
    , mkMethod
        "SceneGetValues"
        [constT word8T, ptrT (objT c_ValueIDVector)]
        intT
    , mkMethod
        "SceneGetValueAsBool"
        [constT word8T, constRefValueID, ptrT boolT]
        boolT
    , mkMethod
        "SceneGetValueAsByte"
        [constT word8T, constRefValueID, ptrT word8T]
        boolT
    , mkMethod
        "SceneGetValueAsFloat"
        [constT word8T, constRefValueID, ptrT floatT]
        boolT
    , mkMethod
        "SceneGetValueAsInt"
        [constT word8T, constRefValueID, ptrT int32T]
        boolT
    , mkMethod
        "SceneGetValueAsShort"
        [constT word8T, constRefValueID, ptrT int16T]
        boolT
    , mkMethod
        "SceneGetValueAsString"
        [constT word8T, constRefValueID, ptrT stringT]
        boolT
    , mkMethod'
        "SceneGetValueListSelection"
        "sceneGetValueListSelectionAsString"
        [constT word8T, constRefValueID, ptrT stringT]
        boolT
    , mkMethod'
        "SceneGetValueListSelection"
        "sceneGetValueListSelectionAsInt"
        [constT word8T, constRefValueID, ptrT int32T]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneBoolValue"
        [constT word8T, constRefValueID, constT boolT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneByteValue"
        [constT word8T, constRefValueID, constT word8T]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneFloatValue"
        [constT word8T, constRefValueID, constT floatT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneIntValue"
        [constT word8T, constRefValueID, constT int32T]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneShortValue"
        [constT word8T, constRefValueID, constT int16T]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneStringValue"
        [constT word8T, constRefValueID, constT stringT]
        boolT
    , mkMethod'
        "SetSceneValueListSelection"
        "setSceneValueListSelectionAsString"
        [constT word8T, constRefValueID, refT (constT stringT)]
        boolT
    , mkMethod'
        "SetSceneValueListSelection"
        "setSceneValueListSelectionAsInt"
        [constT word8T, constRefValueID, constT int32T]
        boolT
    , mkMethod "GetSceneLabel" [constT word8T] stringT
    , mkMethod "SetSceneLabel" [constT word8T, refT (constT stringT)] voidT
    , mkMethod "SceneExists" [constT word8T] boolT
    , mkMethod "ActivateScene" [constT word8T] boolT
    -- Statistics retrieval interface
    --, mkMethod "GetDriverStatistics" [constT homeIdT, ptrT (objT c_DriverData)] voidT
    --, mkMethod "GetNodeStatistics" [constT homeIdT, constT nodeIdT, ptrT (objT c_NodeData)] voidT
    ]
  where
    constRefValueID = refT (constT (objT c_ValueID))
    homeIdT = word32T
    nodeIdT = word8T


Vector.Contents{Vector.c_vector = c_ValueIDVector,Vector.c_iterator = c_ValueIdIterator,Vector.c_constIterator = c_ValueIdConstIterator} =
    Vector.instantiate "ValueIDVector" (objT c_ValueID) mempty
Vector.Contents{Vector.c_vector = c_intVector, Vector.c_iterator = c_intIterator, Vector.c_constIterator = c_intConstIterator} =
    Vector.instantiate "IntVector" int32T mempty
Vector.Contents{Vector.c_vector = c_stringVector, Vector.c_iterator = c_stringIterator, Vector.c_constIterator = c_stringConstIterator} =
    Vector.instantiate "StringVector" stringT mempty

main :: IO ()
main = defaultMain interfaceResult

interfaceResult :: Either String Interface
interfaceResult = do
  iface <- interface "example"
           [ mod_example
           , mod_std
           ]
  interfaceAddHaskellModuleBase ["OpenZWave"] iface

mod_example :: Module
mod_example = moduleModify' (makeModule "ozw" "gen_ozw.hpp" "gen_ozw.cpp") $
    moduleAddExports [ ExportClass c_Manager
                     , ExportClass c_ValueID
                     , ExportClass c_Notification
                     , ExportClass c_Options
                     , ExportEnum e_NotificationType
                     , ExportEnum e_ValueGenre
                     , ExportEnum e_ValueType
                     , ExportCallback cb_OnNotification
                     , ExportClass c_stringVector
                     , ExportClass c_stringIterator
                     , ExportClass c_stringConstIterator
                     , ExportClass c_intVector
                     , ExportClass c_intIterator
                     , ExportClass c_intConstIterator
                     , ExportClass c_ValueIDVector
                     , ExportClass c_ValueIdIterator
                     , ExportClass c_ValueIdConstIterator
                     , ExportEnum e_OptionType
                     ]
