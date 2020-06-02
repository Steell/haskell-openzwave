{-# LANGUAGE FlexibleContexts #-}
module Main where

import Foreign.Hoppy.Generator.Main (defaultMain)
import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std
import Foreign.Hoppy.Generator.Std.String
import qualified Foreign.Hoppy.Generator.Std.Vector as Vector

e_NotificationType :: CppEnum
e_NotificationType =
  enumSetNumericType (Just intT) .
  addReqIncludes [ includeStd "Notification.h" ] $
    makeEnum (ident2 "OpenZWave" "Notification" "NotificationType")
             Nothing
             (zip [0 ..]
                  [ [ "value", "added" ]
                  , [ "value", "removed" ]
                  , [ "value", "changed" ]
                  , [ "value", "refreshed" ]
                  , [ "group" ]
                  , [ "node", "new" ]
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
                  , [ "user", "alerts" ]
                  , [ "manufacturer", "specific", "db", "ready" ]
                  ])

e_ValueGenre :: CppEnum
e_ValueGenre =
  enumSetNumericType (Just intT) .
  addReqIncludes [ includeStd "ValueID.h" ] $
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
e_ValueType =
  enumSetNumericType (Just intT) .
  addReqIncludes [ includeStd "ValueID.h" ] $
    makeEnum (ident2 "OpenZWave" "ValueID" "ValueType") Nothing base
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
    --values = base ++ [ (lastIdx, [ "max" ]) ]
    --(lastIdx, _) = base !! (length base - 1)


c_ValueID :: Class
c_ValueID = addReqIncludes [ includeStd "ValueID.h" ] $
--    classSetDtorPrivate $
    classAddFeatures [
  --Comparable,
  Equatable ] $
        makeClass (ident1 "OpenZWave" "ValueID")
                  Nothing
                  []
                  [ mkCtor "new"
                           [ constT uintT
                           , constT ucharT
                           , constT (enumT e_ValueGenre)
                           , constT ucharT
                           , constT ucharT
                           , constT ucharT
                           , constT (enumT e_ValueType)
                           ]
                  , mkCtor "unpack" [ word32T, ullongT ]
                  , m "GetHomeId" word32T --uintT
                  , m "GetNodeId" ucharT
                  , m "GetGenre" (enumT e_ValueGenre)
                  , m "GetCommandClassId" ucharT
                  , m "GetInstance" ucharT
                  , m "GetIndex" ucharT
                  , m "GetType" (enumT e_ValueType)
                  , m "GetId" ullongT
                  ]
  where
    m s = mkConstMethod s np

c_Notification :: Class
c_Notification = addReqIncludes [ includeStd "Notification.h" ] $
    classSetDtorPrivate $
    makeClass (ident1 "OpenZWave" "Notification")
              Nothing
              []
              [ m "GetType" (enumT e_NotificationType)
              , m "GetHomeId" word32T --uintT
              , wm "GetNodeId"
              , m "GetValueID" (refT . constT $ objT c_ValueID)
              , wm "GetGroupIdx"
              , wm "GetEvent"
              , wm "GetButtonId"
              , wm "GetSceneId"
              --, wm "GetNotification"
              , wm "GetByte"
              , m "GetAsString" stringT
              ]
  where
    m s = mkConstMethod s np
    wm s = m s ucharT

cb_OnNotification :: Callback
cb_OnNotification = makeCallback (toExtName "HaskellOnNotificationCallback")
                                 [ ptrT (constT (objT c_Notification))
                                 , ptrT voidT
                                 ]
                                 voidT

stringT = objT c_string

c_Options :: Class
c_Options = addReqIncludes [ includeStd "Options.h" ] $
    classSetDtorPrivate $
    makeClass (ident1 "OpenZWave" "Options")
              Nothing
              []
              [ mkStaticMethod "Create"
                               [ stringT
                               , stringT
                               , stringT
                               ]
                               (ptrT (objT c_Options))
              , mkStaticMethod "Destroy" np boolT
              , mkStaticMethod "Get" np (ptrT (objT c_Options))
              , mkMethod "Lock" np boolT
              , mkMethod "AddOptionBool"
                         [ stringT, constT boolT ]
                         boolT
              , mkMethod "AddOptionInt"
                         [ stringT, constT intT ]
                         boolT
              , mkMethod "AddOptionString"
                         [ stringT
                         , stringT
                         , constT boolT
                         ]
                         boolT
              , mkMethod "GetOptionAsBool"
                         [ stringT, ptrT boolT ]
                         boolT
              , mkMethod "GetOptionAsInt"
                         [ stringT, ptrT intT ]
                         boolT
              , mkMethod "GetOptionAsString"
                         [ stringT, ptrT stringT ]
                         boolT
              , mkMethod "GetOptionType"
                         [ stringT ]
                         (enumT e_OptionType)
              , mkConstMethod "AreLocked" np boolT
              ]

e_OptionType :: CppEnum
e_OptionType =
  enumSetNumericType (Just intT) .
  addReqIncludes [ includeStd "Options.h" ] $
    makeEnum (ident2 "OpenZWave" "Options" "OptionType") Nothing
        $ zip [0 ..] [ [ "Invalid" ], [ "Bool" ], [ "Int" ], [ "String" ] ]

pfnOnNotification =
      ptrT $ fnT [ptrT (constT (objT c_Notification)), ptrT voidT] voidT

c_Manager :: Class
c_Manager =
  addReqIncludes [includeStd "Manager.h"] $
  classSetDtorPrivate $
  makeClass
    (ident1 "OpenZWave" "Manager")
    Nothing
    []
    [ mkStaticMethod "Create" np (ptrT (objT c_Manager))
    , mkStaticMethod "Get" np (ptrT (objT c_Manager))
    , mkStaticMethod "Destroy" np voidT
    , mkStaticMethod "getVersionAsString" np stringT
    , mkStaticMethod "getVersionLongAsString" np stringT
    -- TODO: Need to figure out how to do c structs
    --, static ozwversion getVersion ()
    -- Configuration
    , mkMethod "WriteConfig" [constT homeIdT] voidT
    , mkConstMethod "GetOptions" np (ptrT (objT c_Options))
    -- Drivers
    , mkMethod
        "AddDriver"
        [ stringT
        -- has default, so this can be omited
        --, refT (constT (enumT e_Driver_ControllerInterface))
        ]
        boolT
    , mkMethod "RemoveDriver" [stringT] boolT
    , mkMethod "GetControllerNodeId" [constT homeIdT] nodeIdT
    , mkMethod "GetSUCNodeId" [constT homeIdT] nodeIdT
    , mkMethod "IsPrimaryController" [constT homeIdT] boolT
    , mkMethod "IsStaticUpdateController" [constT homeIdT] boolT
    , mkMethod "IsBridgeController" [constT homeIdT] boolT
    , mkMethod "GetLibraryVersion" [constT homeIdT] stringT
    , mkMethod "GetLibraryTypeName" [constT homeIdT] stringT
    , mkMethod "GetSendQueueCount" [constT homeIdT] intT
    , mkMethod "LogDriverStatistics" [constT homeIdT] voidT
    --, mkMethod "GetControllerInterfaceType" [constT homeIdT] (enumT e_DriverControllerInterface)
    , mkMethod "GetControllerPath" [constT homeIdT] stringT
    -- Polling Z-Wave Devices
    , mkMethod "GetPollInterval" np intT
    , mkMethod "SetPollInterval" [intT, boolT] voidT
    , mkMethod' "EnablePoll" "enablePoll" [constRefValueID] boolT
    , mkMethod' "EnablePoll" "enablePoll_" [constRefValueID, ucharT] boolT
    , mkMethod "DisablePoll" [constRefValueID] boolT
    , mkMethod "isPolled" [constRefValueID] boolT
    , mkMethod "SetPollIntensity" [constRefValueID, constT ucharT] voidT
    , mkMethod "GetPollIntensity" [constRefValueID] ucharT
    -- Node information
    , mkMethod "RefreshNodeInfo" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "RequestNodeState" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "RequestNodeDynamic" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeListeningDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod
        "IsNodeFrequentListeningDevice"
        [constT homeIdT, constT nodeIdT]
        boolT
    , mkMethod "IsNodeBeamingDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeRoutingDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeSecurityDevice" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "GetNodeMaxBaudRate" [constT homeIdT, constT nodeIdT] uintT
    , mkMethod "GetNodeVersion" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod "GetNodeSecurity" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod "IsNodeZWavePlus" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "GetNodeBasic" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod "GetNodeGeneric" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod "GetNodeSpecific" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod "GetNodeType" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod
        "GetNodeNeighbors"
        [constT homeIdT, constT nodeIdT, ptrT (ptrT ucharT)]
        uintT
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
        [constT homeIdT, constT nodeIdT, stringT]
        voidT
    , mkMethod
        "SetNodeProductName"
        [constT homeIdT, constT nodeIdT, stringT]
        voidT
    , mkMethod
        "SetNodeName"
        [constT homeIdT, constT nodeIdT, stringT]
        voidT
    , mkMethod
        "SetNodeLocation"
        [constT homeIdT, constT nodeIdT, stringT]
        voidT
    , mkMethod "SetNodeOn" [constT homeIdT, constT nodeIdT] voidT
    , mkMethod "SetNodeOff" [constT homeIdT, constT nodeIdT] voidT
    , mkMethod
        "SetNodeLevel"
        [constT homeIdT, constT nodeIdT, constT ucharT]
        voidT
    , mkMethod "IsNodeInfoReceived" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod'
        "GetNodeClassInformation"
        "getNodeClassInformation"
        [constT homeIdT, constT nodeIdT, constT ucharT]
        boolT
    , mkMethod'
        "GetNodeClassInformation"
        "getNodeClassInformation_"
        [ constT homeIdT
        , constT nodeIdT
        , constT ucharT
        , ptrT stringT
        , ptrT ucharT
        ]
        boolT
    , mkMethod "IsNodeAwake" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "IsNodeFailed" [constT homeIdT, constT nodeIdT] boolT
    , mkMethod "GetNodeQueryStage" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodeDeviceType" [constT homeIdT, constT nodeIdT] ushortT
    , mkMethod
        "GetNodeDeviceTypeString"
        [constT homeIdT, constT nodeIdT]
        stringT
    , mkMethod "GetNodeRole" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod "GetNodeRoleString" [constT homeIdT, constT nodeIdT] stringT
    , mkMethod "GetNodePlusType" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod "GetNodePlusTypeString" [constT homeIdT, constT nodeIdT] stringT
    -- Values
    , mkMethod "GetValueLabel" [constRefValueID] stringT
    , mkMethod "SetValueLabel" [constRefValueID, stringT] voidT
    , mkMethod "GetValueUnits" [constRefValueID] stringT
    , mkMethod "SetValueUnits" [constRefValueID, stringT] voidT
    , mkMethod "GetValueHelp" [constRefValueID] stringT
    , mkMethod "SetValueHelp" [constRefValueID, stringT] voidT
    , mkMethod "GetValueMin" [constRefValueID] intT
    , mkMethod "GetValueMax" [constRefValueID] intT
    , mkMethod "IsValueReadOnly" [constRefValueID] boolT
    , mkMethod "IsValueWriteOnly" [constRefValueID] boolT
    , mkMethod "IsValueSet" [constRefValueID] boolT
    , mkMethod "IsValuePolled" [constRefValueID] boolT
    , mkMethod "GetValueAsBool" [constRefValueID, ptrT boolT] boolT
    , mkMethod "GetValueAsByte" [constRefValueID, ptrT ucharT] boolT
    , mkMethod "GetValueAsFloat" [constRefValueID, ptrT floatT] boolT
    , mkMethod "GetValueAsInt" [constRefValueID, ptrT intT] boolT
    , mkMethod "GetValueAsShort" [constRefValueID, ptrT shortT] boolT
    , mkMethod "GetValueAsString" [constRefValueID, ptrT stringT] boolT
    , mkMethod
        "GetValueAsRaw"
        [constRefValueID, ptrT (ptrT ucharT), ptrT ucharT]
        boolT
    , mkMethod'
        "GetValueListSelection"
        "GetValueListSelectionString"
        [constRefValueID, ptrT stringT]
        boolT
    , mkMethod'
        "GetValueListSelection"
        "GetValueListSelection"
        [constRefValueID, ptrT intT]
        boolT
    , mkMethod
        "GetValueListItems"
        [constRefValueID, ptrT (objT c_stringVector)]
        boolT
    , mkMethod
        "GetValueListValues"
        [constRefValueID, ptrT (objT c_intVector)]
        boolT
    , mkMethod "GetValueFloatPrecision" [constRefValueID, ptrT ucharT] boolT
    , mkMethod' "SetValue" "setBoolValue" [constRefValueID, constT boolT] boolT
    , mkMethod' "SetValue" "setByteValue" [constRefValueID, constT ucharT] boolT
    , mkMethod'
        "SetValue"
        "setFloatValue"
        [constRefValueID, constT floatT]
        boolT
    , mkMethod' "SetValue" "setIntValue" [constRefValueID, constT intT] boolT
    , mkMethod'
        "SetValue"
        "setShortValue"
        [constRefValueID, constT shortT]
        boolT
    , mkMethod'
        "SetValue"
        "setRawValue"
        [constRefValueID, ptrT (constT ucharT), constT ucharT]
        boolT
    , mkMethod'
        "SetValue"
        "SetStringValue"
        [constRefValueID, constT stringT]
        boolT
    , mkMethod
        "SetValueListSelection"
        [constRefValueID, stringT]
        boolT
    , mkMethod "RefreshValue" [constRefValueID] boolT
    , mkMethod "SetChangeVerified" [constRefValueID, boolT] voidT
    , mkMethod "GetChangeVerified" [constRefValueID] boolT
    , mkMethod "PressButton" [constRefValueID] boolT
    , mkMethod "ReleaseButton" [constRefValueID] boolT
    -- Climate Control Schedules
    , mkMethod "GetNumSwitchPoints" [constRefValueID] ucharT
    , mkMethod
        "SetSwitchPoint"
        [constRefValueID, constT ucharT, constT ucharT, constT charT]
        boolT
    , mkMethod
        "RemoveSwitchPoint"
        [constRefValueID, constT ucharT, constT ucharT]
        boolT
    , mkMethod "ClearSwitchPoints" [constRefValueID] voidT
    , mkMethod
        "GetSwitchPoint"
        [constRefValueID, constT ucharT, ptrT ucharT, ptrT ucharT, ptrT int8T]
        boolT
    -- SwitchAll
    , mkMethod "SwitchAllOn" [constT homeIdT] voidT
    , mkMethod "SwitchAllOff" [constT homeIdT] voidT
    -- Configuration Parameters
    , mkMethod'
        "SetConfigParam"
        "setConfigParam_"
        [constT homeIdT, constT nodeIdT, constT ucharT, intT, constT ucharT]
        boolT
    , mkMethod'
        "SetConfigParam"
        "setConfigParam"
        [constT homeIdT, constT nodeIdT, constT ucharT, intT]
        boolT
    , mkMethod
        "RequestConfigParam"
        [constT homeIdT, constT nodeIdT, constT ucharT]
        voidT
    , mkMethod "RequestAllConfigParams" [constT homeIdT, constT nodeIdT] voidT
    -- Groups
    , mkMethod "GetNumGroups" [constT homeIdT, constT nodeIdT] ucharT
    , mkMethod'
        "GetAssociations"
        "getAssociations_"
        [constT homeIdT, constT nodeIdT, constT ucharT, ptrT (ptrT ucharT)]
        uintT
    -- TODO: structs?
    {-, mkMethod'
        "GetAssociations"
        "getAssociations"
        [ constT homeIdT
        , constT nodeIdT
        , constT ucharT
        , ptrT (ptrT (objT c_InstanceAssociation))
        ]
        uintT -}
    , mkMethod
        "GetMaxAssociations"
        [constT homeIdT, constT nodeIdT, constT ucharT]
        ucharT
    , mkMethod
        "GetGroupLabel"
        [constT homeIdT, constT nodeIdT, constT ucharT]
        stringT
    , mkMethod
        "AddAssociation"
        [ constT homeIdT
        , constT nodeIdT
        , constT ucharT
        , constT ucharT
        , constT ucharT
        ]
        voidT
    , mkMethod
        "RemoveAssociation"
        [ constT homeIdT
        , constT nodeIdT
        , constT ucharT
        , constT ucharT
        , constT ucharT
        ]
        voidT
    -- Notifications
    , mkMethod "AddWatcher" [pfnOnNotification, ptrT voidT] boolT
    , mkMethod "RemoveWatcher" [pfnOnNotification, ptrT voidT] boolT
    -- Controller Commands
    , mkMethod "ResetController" [constT homeIdT] voidT
    , mkMethod "SoftReset" [constT homeIdT] voidT
    , mkMethod "CancelControllerCommand" [constT homeIdT] boolT
    -- Network Commands
    , mkMethod
        "TestNetworkNode"
        [constT homeIdT, constT nodeIdT, constT uintT]
        voidT
    , mkMethod "TestNetwork" [constT homeIdT, constT uintT] voidT
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
        [constT homeIdT, constT nodeIdT, constT ucharT]
        boolT
    , mkMethod
        "DeleteButton"
        [constT homeIdT, constT nodeIdT, constT ucharT]
        boolT
    -- Scene Commands
    , mkMethod "GetNumScenes" np ucharT
    , mkMethod "GetAllScenes" [ptrT (ptrT ucharT)] ucharT
    , mkMethod "RemoveAllScenes" [constT homeIdT] voidT
    , mkMethod "CreateScene" np ucharT
    , mkMethod "RemoveScene" [constT ucharT] boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneBoolValue"
        [constT ucharT, constRefValueID, constT boolT]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneByteValue"
        [constT ucharT, constRefValueID, constT ucharT]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneFloatValue"
        [constT ucharT, constRefValueID, constT floatT]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneIntValue"
        [constT ucharT, constRefValueID, constT intT]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneShortValue"
        [constT ucharT, constRefValueID, constT shortT]
        boolT
    , mkMethod'
        "AddSceneValue"
        "addSceneStringValue"
        [constT ucharT, constRefValueID, stringT]
        boolT
    , mkMethod'
        "AddSceneValueListSelection"
        "addSceneValueListSelectionString"
        [constT ucharT, constRefValueID, stringT]
        boolT
    , mkMethod'
        "AddSceneValueListSelection"
        "addSceneValueListSelectionBool"
        [constT ucharT, constRefValueID, constT intT]
        boolT
    , mkMethod "RemoveSceneValue" [constT ucharT, constRefValueID] boolT
    , mkMethod
        "SceneGetValues"
        [constT ucharT, ptrT (objT c_ValueIDVector)]
        intT
    , mkMethod
        "SceneGetValueAsBool"
        [constT ucharT, constRefValueID, ptrT boolT]
        boolT
    , mkMethod
        "SceneGetValueAsByte"
        [constT ucharT, constRefValueID, ptrT ucharT]
        boolT
    , mkMethod
        "SceneGetValueAsFloat"
        [constT ucharT, constRefValueID, ptrT floatT]
        boolT
    , mkMethod
        "SceneGetValueAsInt"
        [constT ucharT, constRefValueID, ptrT intT]
        boolT
    , mkMethod
        "SceneGetValueAsShort"
        [constT ucharT, constRefValueID, ptrT shortT]
        boolT
    , mkMethod
        "SceneGetValueAsString"
        [constT ucharT, constRefValueID, ptrT stringT]
        boolT
    , mkMethod'
        "SceneGetValueListSelection"
        "sceneGetValueListSelectionAsString"
        [constT ucharT, constRefValueID, ptrT stringT]
        boolT
    , mkMethod'
        "SceneGetValueListSelection"
        "sceneGetValueListSelectionAsInt"
        [constT ucharT, constRefValueID, ptrT intT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneBoolValue"
        [constT ucharT, constRefValueID, constT boolT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneByteValue"
        [constT ucharT, constRefValueID, constT ucharT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneFloatValue"
        [constT ucharT, constRefValueID, constT floatT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneIntValue"
        [constT ucharT, constRefValueID, constT intT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneShortValue"
        [constT ucharT, constRefValueID, constT shortT]
        boolT
    , mkMethod'
        "SetSceneValue"
        "setSceneStringValue"
        [constT ucharT, constRefValueID, constT stringT]
        boolT
    , mkMethod'
        "SetSceneValueListSelection"
        "setSceneValueListSelectionAsString"
        [constT ucharT, constRefValueID, stringT]
        boolT
    , mkMethod'
        "SetSceneValueListSelection"
        "setSceneValueListSelectionAsInt"
        [constT ucharT, constRefValueID, constT intT]
        boolT
    , mkMethod "GetSceneLabel" [constT ucharT] stringT
    , mkMethod "SetSceneLabel" [constT ucharT, stringT] voidT
    , mkMethod "SceneExists" [constT ucharT] boolT
    , mkMethod "ActivateScene" [constT ucharT] boolT
    -- Statistics retrieval interface
    --, mkMethod "GetDriverStatistics" [constT homeIdT, ptrT (objT c_DriverData)] voidT
    --, mkMethod "GetNodeStatistics" [constT homeIdT, constT nodeIdT, ptrT (objT c_NodeData)] voidT
    ]
  where
    constRefValueID = objT c_ValueID
    homeIdT = word32T --uintT
    nodeIdT = ucharT

{-f_AddWatcher :: Function
f_AddWatcher = addReqIncludes [ includeLocal "utils.hpp" ] $
    makeFn (ident "AddWatcher")
           Nothing
           Nonpure
           [ ptrT (objT c_Manager), ptrT $ callbackT cb_OnNotification ]
           boolT--}

vectorOptions = Vector.defaultOptions { Vector.optValueConversion = (Just ConvertValue)}

Vector.Contents{Vector.c_vector = c_ValueIDVector,Vector.c_iterator = c_ValueIdIterator,Vector.c_constIterator = c_ValueIdConstIterator} =
    let c = Vector.instantiate' "ValueIDVector" (objT c_ValueID) mempty $
            Vector.defaultOptions { Vector.optValueConversion = (Just ConvertPtr)
                                  }
    in
        c { Vector.c_vector = hideCtors (Vector.c_vector c) }
  where
    hideCtors c = makeClass (classIdentifier c)
                            (Just $ classExtName c)
                            (classSuperclasses c)
                            ((fmap CECtor $ classCtors c)
                                 ++ (fmap CEVar $ classVariables c)
                                     ++ (fmap CEMethod . filter goodMeth $
                                             classMethods c))
    -- vPtr->resize(int) does not work properly because ValueID has a private default
    -- constructor.
    goodMeth m = case methodImpl m of
        (RealMethod (FnName "resize")) ->
            length (methodParams m) /= 1
        _ -> True

Vector.Contents{Vector.c_vector = c_intVector,Vector.c_iterator = c_intIterator,Vector.c_constIterator = c_intConstIterator} =
    Vector.instantiate' "IntVector" intT mempty vectorOptions
Vector.Contents{Vector.c_vector = c_stringVector,Vector.c_iterator = c_stringIterator,Vector.c_constIterator = c_stringConstIterator} =
    Vector.instantiate' "StringVector" stringT mempty vectorOptions

main :: IO ()
main = defaultMain interfaceResult

interfaceResult :: Either String Interface
interfaceResult = do
  iface <- interfaceSetNoCompiler <$> interface "example"
           [ mod_example
           , mod_std
           ]
  interfaceAddHaskellModuleBase ["OpenZWave"] iface

mod_example :: Module
mod_example = moduleModify' (makeModule "ozw" "gen_ozw.hpp" "gen_ozw.cpp") $
    moduleAddExports [ Export c_ValueID
                     , Export c_Notification
                     , Export c_Options
                     , Export e_NotificationType
                     , Export e_ValueGenre
                     , Export e_ValueType
                     , Export cb_OnNotification
                     , Export c_stringVector
                     , Export c_stringIterator
                     , Export c_stringConstIterator
                     , Export c_intVector
                     , Export c_intIterator
                     , Export c_intConstIterator
                     , Export c_ValueIDVector
                     , Export c_ValueIdIterator
                     , Export c_ValueIdConstIterator
                     , Export e_OptionType
                     , Export c_Manager
                     --, ExportFn f_AddWatcher
                     ]
