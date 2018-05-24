{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module OpenZWave.Ozw (
  haskellOnNotificationCallback_newFunPtr,
  haskellOnNotificationCallback_new,
  IntVectorValue (..),
  IntVectorConstPtr (..),
  intVector_atConst,
  intVector_backConst,
  intVector_beginConst,
  intVector_capacity,
  intVector_empty,
  intVector_endConst,
  intVector_frontConst,
  intVector_maxSize,
  intVector_size,
  IntVectorPtr (..),
  intVector_at,
  intVector_back,
  intVector_begin,
  intVector_clear,
  intVector_end,
  intVector_erase,
  intVector_eraseRange,
  intVector_front,
  intVector_insert,
  intVector_popBack,
  intVector_pushBack,
  intVector_reserve,
  intVector_resize,
  intVector_resizeWith,
  intVector_shrinkToFit,
  intVector_swap,
  intVector_ASSIGN,
  IntVectorConst (..),
  castIntVectorToConst,
  IntVector (..),
  castIntVectorToNonconst,
  intVector_new,
  intVector_newCopy,
  IntVectorSuper (..),
  IntVectorSuperConst (..),
  IntVectorConstIteratorValue (..),
  IntVectorConstIteratorConstPtr (..),
  intVectorConstIterator_deconst,
  intVectorConstIterator_getConst,
  intVectorConstIterator_EQ,
  intVectorConstIterator_NE,
  intVectorConstIterator_atConst,
  IntVectorConstIteratorPtr (..),
  intVectorConstIterator_ASSIGN,
  intVectorConstIterator_next,
  intVectorConstIterator_prev,
  intVectorConstIterator_plus,
  intVectorConstIterator_add,
  intVectorConstIterator_minus,
  intVectorConstIterator_difference,
  intVectorConstIterator_subtract,
  IntVectorConstIteratorConst (..),
  castIntVectorConstIteratorToConst,
  IntVectorConstIterator (..),
  castIntVectorConstIteratorToNonconst,
  intVectorConstIterator_newFromNonconst,
  intVectorConstIterator_new,
  intVectorConstIterator_newCopy,
  IntVectorConstIteratorSuper (..),
  IntVectorConstIteratorSuperConst (..),
  IntVectorIteratorValue (..),
  IntVectorIteratorConstPtr (..),
  intVectorIterator_getConst,
  intVectorIterator_EQ,
  intVectorIterator_NE,
  intVectorIterator_atConst,
  IntVectorIteratorPtr (..),
  intVectorIterator_get,
  intVectorIterator_put,
  intVectorIterator_ASSIGN,
  intVectorIterator_next,
  intVectorIterator_prev,
  intVectorIterator_plus,
  intVectorIterator_add,
  intVectorIterator_minus,
  intVectorIterator_difference,
  intVectorIterator_subtract,
  intVectorIterator_at,
  IntVectorIteratorConst (..),
  castIntVectorIteratorToConst,
  IntVectorIterator (..),
  castIntVectorIteratorToNonconst,
  intVectorIterator_new,
  intVectorIterator_newCopy,
  IntVectorIteratorSuper (..),
  IntVectorIteratorSuperConst (..),
  ManagerValue (..),
  ManagerConstPtr (..),
  manager_GetOptions,
  ManagerPtr (..),
  manager_WriteConfig,
  manager_AddDriver,
  manager_RemoveDriver,
  manager_GetControllerNodeId,
  manager_GetSUCNodeId,
  manager_IsPrimaryController,
  manager_IsStaticUpdateController,
  manager_IsBridgeController,
  manager_GetLibraryVersion,
  manager_GetLibraryTypeName,
  manager_GetSendQueueCount,
  manager_LogDriverStatistics,
  manager_GetControllerPath,
  manager_GetPollInterval,
  manager_SetPollInterval,
  manager_enablePoll,
  manager_enablePoll_,
  manager_DisablePoll,
  manager_isPolled,
  manager_SetPollIntensity,
  manager_GetPollIntensity,
  manager_RefreshNodeInfo,
  manager_RequestNodeState,
  manager_RequestNodeDynamic,
  manager_IsNodeListeningDevice,
  manager_IsNodeFrequentListeningDevice,
  manager_IsNodeBeamingDevice,
  manager_IsNodeRoutingDevice,
  manager_IsNodeSecurityDevice,
  manager_GetNodeMaxBaudRate,
  manager_GetNodeVersion,
  manager_GetNodeSecurity,
  manager_IsNodeZWavePlus,
  manager_GetNodeBasic,
  manager_GetNodeGeneric,
  manager_GetNodeSpecific,
  manager_GetNodeType,
  manager_GetNodeNeighbors,
  manager_GetNodeManufacturerName,
  manager_GetNodeProductName,
  manager_GetNodeName,
  manager_GetNodeLocation,
  manager_GetNodeManufacturerId,
  manager_GetNodeProductType,
  manager_GetNodeProductId,
  manager_SetNodeManufacturerName,
  manager_SetNodeProductName,
  manager_SetNodeName,
  manager_SetNodeLocation,
  manager_SetNodeOn,
  manager_SetNodeOff,
  manager_SetNodeLevel,
  manager_IsNodeInfoReceived,
  manager_getNodeClassInformation,
  manager_getNodeClassInformation_,
  manager_IsNodeAwake,
  manager_IsNodeFailed,
  manager_GetNodeQueryStage,
  manager_GetNodeDeviceType,
  manager_GetNodeDeviceTypeString,
  manager_GetNodeRole,
  manager_GetNodeRoleString,
  manager_GetNodePlusType,
  manager_GetNodePlusTypeString,
  manager_GetValueLabel,
  manager_SetValueLabel,
  manager_GetValueUnits,
  manager_SetValueUnits,
  manager_GetValueHelp,
  manager_SetValueHelp,
  manager_GetValueMin,
  manager_GetValueMax,
  manager_IsValueReadOnly,
  manager_IsValueWriteOnly,
  manager_IsValueSet,
  manager_IsValuePolled,
  manager_GetValueAsBool,
  manager_GetValueAsByte,
  manager_GetValueAsFloat,
  manager_GetValueAsInt,
  manager_GetValueAsShort,
  manager_GetValueAsString,
  manager_GetValueAsRaw,
  manager_GetValueListSelectionString,
  manager_GetValueListSelection,
  manager_GetValueListItems,
  manager_GetValueListValues,
  manager_GetValueFloatPrecision,
  manager_setBoolValue,
  manager_setByteValue,
  manager_setFloatValue,
  manager_setIntValue,
  manager_setShortValue,
  manager_setRawValue,
  manager_SetStringValue,
  manager_SetValueListSelection,
  manager_RefreshValue,
  manager_SetChangeVerified,
  manager_GetChangeVerified,
  manager_PressButton,
  manager_ReleaseButton,
  manager_GetNumSwitchPoints,
  manager_SetSwitchPoint,
  manager_RemoveSwitchPoint,
  manager_ClearSwitchPoints,
  manager_GetSwitchPoint,
  manager_SwitchAllOn,
  manager_SwitchAllOff,
  manager_setConfigParam_,
  manager_setConfigParam,
  manager_RequestConfigParam,
  manager_RequestAllConfigParams,
  manager_GetNumGroups,
  manager_getAssociations_,
  manager_GetMaxAssociations,
  manager_GetGroupLabel,
  manager_AddAssociation,
  manager_RemoveAssociation,
  manager_AddWatcher,
  manager_RemoveWatcher,
  manager_ResetController,
  manager_SoftReset,
  manager_CancelControllerCommand,
  manager_TestNetworkNode,
  manager_TestNetwork,
  manager_HealNetworkNode,
  manager_HealNetwork,
  manager_AddNode,
  manager_RemoveNode,
  manager_RemoveFailedNode,
  manager_HasNodeFailed,
  manager_RequestNodeNeighborUpdate,
  manager_AssignReturnRoute,
  manager_DeleteAllReturnRoutes,
  manager_SendNodeInformation,
  manager_CreateNewPrimary,
  manager_ReceiveConfiguration,
  manager_ReplaceFailedNode,
  manager_TransferPrimaryRole,
  manager_RequestNetworkUpdate,
  manager_ReplicationSend,
  manager_CreateButton,
  manager_DeleteButton,
  manager_GetNumScenes,
  manager_GetAllScenes,
  manager_RemoveAllScenes,
  manager_CreateScene,
  manager_RemoveScene,
  manager_addSceneBoolValue,
  manager_addSceneByteValue,
  manager_addSceneFloatValue,
  manager_addSceneIntValue,
  manager_addSceneShortValue,
  manager_addSceneStringValue,
  manager_addSceneValueListSelectionString,
  manager_addSceneValueListSelectionBool,
  manager_RemoveSceneValue,
  manager_SceneGetValues,
  manager_SceneGetValueAsBool,
  manager_SceneGetValueAsByte,
  manager_SceneGetValueAsFloat,
  manager_SceneGetValueAsInt,
  manager_SceneGetValueAsShort,
  manager_SceneGetValueAsString,
  manager_sceneGetValueListSelectionAsString,
  manager_sceneGetValueListSelectionAsInt,
  manager_setSceneBoolValue,
  manager_setSceneByteValue,
  manager_setSceneFloatValue,
  manager_setSceneIntValue,
  manager_setSceneShortValue,
  manager_setSceneStringValue,
  manager_setSceneValueListSelectionAsString,
  manager_setSceneValueListSelectionAsInt,
  manager_GetSceneLabel,
  manager_SetSceneLabel,
  manager_SceneExists,
  manager_ActivateScene,
  manager_Create,
  manager_Get,
  manager_Destroy,
  manager_getVersionAsString,
  manager_getVersionLongAsString,
  ManagerConst (..),
  castManagerToConst,
  Manager (..),
  castManagerToNonconst,
  ManagerSuper (..),
  ManagerSuperConst (..),
  NotificationValue (..),
  NotificationConstPtr (..),
  notification_GetType,
  notification_GetHomeId,
  notification_GetNodeId,
  notification_GetValueID,
  notification_GetGroupIdx,
  notification_GetEvent,
  notification_GetButtonId,
  notification_GetSceneId,
  notification_GetByte,
  notification_GetAsString,
  NotificationPtr (..),
  NotificationConst (..),
  castNotificationToConst,
  Notification (..),
  castNotificationToNonconst,
  NotificationSuper (..),
  NotificationSuperConst (..),
  NotificationType (..),
  OptionType (..),
  OptionsValue (..),
  OptionsConstPtr (..),
  options_AreLocked,
  OptionsPtr (..),
  options_Lock,
  options_AddOptionBool,
  options_AddOptionInt,
  options_AddOptionString,
  options_GetOptionAsBool,
  options_GetOptionAsInt,
  options_GetOptionAsString,
  options_GetOptionType,
  options_Create,
  options_Destroy,
  options_Get,
  OptionsConst (..),
  castOptionsToConst,
  Options (..),
  castOptionsToNonconst,
  OptionsSuper (..),
  OptionsSuperConst (..),
  StringVectorValue (..),
  StringVectorConstPtr (..),
  stringVector_atConst,
  stringVector_backConst,
  stringVector_beginConst,
  stringVector_capacity,
  stringVector_empty,
  stringVector_endConst,
  stringVector_frontConst,
  stringVector_maxSize,
  stringVector_size,
  StringVectorPtr (..),
  stringVector_at,
  stringVector_back,
  stringVector_begin,
  stringVector_clear,
  stringVector_end,
  stringVector_erase,
  stringVector_eraseRange,
  stringVector_front,
  stringVector_insert,
  stringVector_popBack,
  stringVector_pushBack,
  stringVector_reserve,
  stringVector_resize,
  stringVector_resizeWith,
  stringVector_shrinkToFit,
  stringVector_swap,
  stringVector_ASSIGN,
  StringVectorConst (..),
  castStringVectorToConst,
  StringVector (..),
  castStringVectorToNonconst,
  stringVector_new,
  stringVector_newCopy,
  StringVectorSuper (..),
  StringVectorSuperConst (..),
  StringVectorConstIteratorValue (..),
  StringVectorConstIteratorConstPtr (..),
  stringVectorConstIterator_deconst,
  stringVectorConstIterator_getConst,
  stringVectorConstIterator_EQ,
  stringVectorConstIterator_NE,
  stringVectorConstIterator_atConst,
  StringVectorConstIteratorPtr (..),
  stringVectorConstIterator_ASSIGN,
  stringVectorConstIterator_next,
  stringVectorConstIterator_prev,
  stringVectorConstIterator_plus,
  stringVectorConstIterator_add,
  stringVectorConstIterator_minus,
  stringVectorConstIterator_difference,
  stringVectorConstIterator_subtract,
  StringVectorConstIteratorConst (..),
  castStringVectorConstIteratorToConst,
  StringVectorConstIterator (..),
  castStringVectorConstIteratorToNonconst,
  stringVectorConstIterator_newFromNonconst,
  stringVectorConstIterator_new,
  stringVectorConstIterator_newCopy,
  StringVectorConstIteratorSuper (..),
  StringVectorConstIteratorSuperConst (..),
  StringVectorIteratorValue (..),
  StringVectorIteratorConstPtr (..),
  stringVectorIterator_getConst,
  stringVectorIterator_EQ,
  stringVectorIterator_NE,
  stringVectorIterator_atConst,
  StringVectorIteratorPtr (..),
  stringVectorIterator_get,
  stringVectorIterator_put,
  stringVectorIterator_ASSIGN,
  stringVectorIterator_next,
  stringVectorIterator_prev,
  stringVectorIterator_plus,
  stringVectorIterator_add,
  stringVectorIterator_minus,
  stringVectorIterator_difference,
  stringVectorIterator_subtract,
  stringVectorIterator_at,
  StringVectorIteratorConst (..),
  castStringVectorIteratorToConst,
  StringVectorIterator (..),
  castStringVectorIteratorToNonconst,
  stringVectorIterator_new,
  stringVectorIterator_newCopy,
  StringVectorIteratorSuper (..),
  StringVectorIteratorSuperConst (..),
  ValueGenre (..),
  ValueIDValue (..),
  ValueIDConstPtr (..),
  valueID_GetHomeId,
  valueID_GetNodeId,
  valueID_GetGenre,
  valueID_GetCommandClassId,
  valueID_GetInstance,
  valueID_GetIndex,
  valueID_GetType,
  valueID_GetId,
  valueID_EQ,
  valueID_NE,
  ValueIDPtr (..),
  ValueIDConst (..),
  castValueIDToConst,
  ValueID (..),
  castValueIDToNonconst,
  valueID_new,
  valueID_unpack,
  ValueIDSuper (..),
  ValueIDSuperConst (..),
  ValueIDVectorValue (..),
  ValueIDVectorConstPtr (..),
  valueIDVector_atConst,
  valueIDVector_backConst,
  valueIDVector_beginConst,
  valueIDVector_capacity,
  valueIDVector_empty,
  valueIDVector_endConst,
  valueIDVector_frontConst,
  valueIDVector_maxSize,
  valueIDVector_size,
  ValueIDVectorPtr (..),
  valueIDVector_at,
  valueIDVector_back,
  valueIDVector_begin,
  valueIDVector_clear,
  valueIDVector_end,
  valueIDVector_erase,
  valueIDVector_eraseRange,
  valueIDVector_front,
  valueIDVector_insert,
  valueIDVector_popBack,
  valueIDVector_pushBack,
  valueIDVector_reserve,
  valueIDVector_resizeWith,
  valueIDVector_shrinkToFit,
  valueIDVector_swap,
  valueIDVector_ASSIGN,
  ValueIDVectorConst (..),
  castValueIDVectorToConst,
  ValueIDVector (..),
  castValueIDVectorToNonconst,
  valueIDVector_new,
  valueIDVector_newCopy,
  ValueIDVectorSuper (..),
  ValueIDVectorSuperConst (..),
  ValueIDVectorConstIteratorValue (..),
  ValueIDVectorConstIteratorConstPtr (..),
  valueIDVectorConstIterator_deconst,
  valueIDVectorConstIterator_getConst,
  valueIDVectorConstIterator_EQ,
  valueIDVectorConstIterator_NE,
  valueIDVectorConstIterator_atConst,
  ValueIDVectorConstIteratorPtr (..),
  valueIDVectorConstIterator_ASSIGN,
  valueIDVectorConstIterator_next,
  valueIDVectorConstIterator_prev,
  valueIDVectorConstIterator_plus,
  valueIDVectorConstIterator_add,
  valueIDVectorConstIterator_minus,
  valueIDVectorConstIterator_difference,
  valueIDVectorConstIterator_subtract,
  ValueIDVectorConstIteratorConst (..),
  castValueIDVectorConstIteratorToConst,
  ValueIDVectorConstIterator (..),
  castValueIDVectorConstIteratorToNonconst,
  valueIDVectorConstIterator_newFromNonconst,
  valueIDVectorConstIterator_new,
  valueIDVectorConstIterator_newCopy,
  ValueIDVectorConstIteratorSuper (..),
  ValueIDVectorConstIteratorSuperConst (..),
  ValueIDVectorIteratorValue (..),
  ValueIDVectorIteratorConstPtr (..),
  valueIDVectorIterator_getConst,
  valueIDVectorIterator_EQ,
  valueIDVectorIterator_NE,
  valueIDVectorIterator_atConst,
  ValueIDVectorIteratorPtr (..),
  valueIDVectorIterator_get,
  valueIDVectorIterator_put,
  valueIDVectorIterator_ASSIGN,
  valueIDVectorIterator_next,
  valueIDVectorIterator_prev,
  valueIDVectorIterator_plus,
  valueIDVectorIterator_add,
  valueIDVectorIterator_minus,
  valueIDVectorIterator_difference,
  valueIDVectorIterator_subtract,
  valueIDVectorIterator_at,
  ValueIDVectorIteratorConst (..),
  castValueIDVectorIteratorToConst,
  ValueIDVectorIterator (..),
  castValueIDVectorIteratorToNonconst,
  valueIDVectorIterator_new,
  valueIDVectorIterator_newCopy,
  ValueIDVectorIteratorSuper (..),
  ValueIDVectorIteratorSuperConst (..),
  ValueType (..),
  ) where

import Control.Monad ((<=<))
import qualified Data.Int as HoppyDI
import qualified Data.Word as HoppyDW
import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified OpenZWave.Std as M2
import Prelude (($), (++), (-), (.), (/=), (=<<), (==), (>>))
import qualified Prelude as HoppyP

foreign import ccall "wrapper" haskellOnNotificationCallback_new'newFunPtr :: (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()))
foreign import ccall "genpop__HaskellOnNotificationCallback" haskellOnNotificationCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()))
foreign import ccall "genpop__IntVector_new" intVector_new' ::  HoppyP.IO (HoppyF.Ptr IntVector)
foreign import ccall "genpop__IntVector_newCopy" intVector_newCopy' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO (HoppyF.Ptr IntVector)
foreign import ccall "genpop__IntVector_at" intVector_at' ::  HoppyF.Ptr IntVector -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVector_atConst" intVector_atConst' ::  HoppyF.Ptr IntVectorConst -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVector_back" intVector_back' ::  HoppyF.Ptr IntVector -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVector_backConst" intVector_backConst' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVector_begin" intVector_begin' ::  HoppyF.Ptr IntVector -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVector_beginConst" intVector_beginConst' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVector_capacity" intVector_capacity' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__IntVector_clear" intVector_clear' ::  HoppyF.Ptr IntVector -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_empty" intVector_empty' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__IntVector_end" intVector_end' ::  HoppyF.Ptr IntVector -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVector_endConst" intVector_endConst' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVector_erase" intVector_erase' ::  HoppyF.Ptr IntVector -> HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_eraseRange" intVector_eraseRange' ::  HoppyF.Ptr IntVector -> HoppyF.Ptr IntVectorIteratorConst -> HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_front" intVector_front' ::  HoppyF.Ptr IntVector -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVector_frontConst" intVector_frontConst' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVector_insert" intVector_insert' ::  HoppyF.Ptr IntVector -> HoppyF.Ptr IntVectorIteratorConst -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVector_maxSize" intVector_maxSize' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__IntVector_popBack" intVector_popBack' ::  HoppyF.Ptr IntVector -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_pushBack" intVector_pushBack' ::  HoppyF.Ptr IntVector -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_reserve" intVector_reserve' ::  HoppyF.Ptr IntVector -> HoppyFC.CSize -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_resize" intVector_resize' ::  HoppyF.Ptr IntVector -> HoppyFC.CSize -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_resizeWith" intVector_resizeWith' ::  HoppyF.Ptr IntVector -> HoppyFC.CSize -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_shrinkToFit" intVector_shrinkToFit' ::  HoppyF.Ptr IntVector -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_size" intVector_size' ::  HoppyF.Ptr IntVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__IntVector_swap" intVector_swap' ::  HoppyF.Ptr IntVector -> HoppyF.Ptr IntVector -> HoppyP.IO ()
foreign import ccall "genpop__IntVector_ASSIGN" intVector_ASSIGN' ::  HoppyF.Ptr IntVector -> HoppyF.Ptr IntVectorConst -> HoppyP.IO (HoppyF.Ptr IntVector)
foreign import ccall "gendel__IntVector" delete'IntVector :: HoppyF.Ptr IntVectorConst -> HoppyP.IO ()
foreign import ccall "&gendel__IntVector" deletePtr'IntVector :: HoppyF.FunPtr (HoppyF.Ptr IntVectorConst -> HoppyP.IO ())
foreign import ccall "genpop__IntVectorConstIterator_newFromNonconst" intVectorConstIterator_newFromNonconst' ::  HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_new" intVectorConstIterator_new' ::  HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_newCopy" intVectorConstIterator_newCopy' ::  HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_deconst" intVectorConstIterator_deconst' ::  HoppyF.Ptr IntVectorConstIteratorConst -> HoppyF.Ptr IntVector -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorConstIterator_getConst" intVectorConstIterator_getConst' ::  HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVectorConstIterator_EQ" intVectorConstIterator_EQ' ::  HoppyF.Ptr IntVectorConstIteratorConst -> HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__IntVectorConstIterator_NE" intVectorConstIterator_NE' ::  HoppyF.Ptr IntVectorConstIteratorConst -> HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__IntVectorConstIterator_ASSIGN" intVectorConstIterator_ASSIGN' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_next" intVectorConstIterator_next' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_prev" intVectorConstIterator_prev' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_plus" intVectorConstIterator_plus' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_add" intVectorConstIterator_add' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_minus" intVectorConstIterator_minus' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_difference" intVectorConstIterator_difference' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__IntVectorConstIterator_subtract" intVectorConstIterator_subtract' ::  HoppyF.Ptr IntVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorConstIterator)
foreign import ccall "genpop__IntVectorConstIterator_atConst" intVectorConstIterator_atConst' ::  HoppyF.Ptr IntVectorConstIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "gendel__IntVectorConstIterator" delete'IntVectorConstIterator :: HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__IntVectorConstIterator" deletePtr'IntVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr IntVectorConstIteratorConst -> HoppyP.IO ())
foreign import ccall "genpop__IntVectorIterator_new" intVectorIterator_new' ::  HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_newCopy" intVectorIterator_newCopy' ::  HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_get" intVectorIterator_get' ::  HoppyF.Ptr IntVectorIterator -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVectorIterator_getConst" intVectorIterator_getConst' ::  HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVectorIterator_put" intVectorIterator_put' ::  HoppyF.Ptr IntVectorIterator -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__IntVectorIterator_EQ" intVectorIterator_EQ' ::  HoppyF.Ptr IntVectorIteratorConst -> HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__IntVectorIterator_NE" intVectorIterator_NE' ::  HoppyF.Ptr IntVectorIteratorConst -> HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__IntVectorIterator_ASSIGN" intVectorIterator_ASSIGN' ::  HoppyF.Ptr IntVectorIterator -> HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_next" intVectorIterator_next' ::  HoppyF.Ptr IntVectorIterator -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_prev" intVectorIterator_prev' ::  HoppyF.Ptr IntVectorIterator -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_plus" intVectorIterator_plus' ::  HoppyF.Ptr IntVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_add" intVectorIterator_add' ::  HoppyF.Ptr IntVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_minus" intVectorIterator_minus' ::  HoppyF.Ptr IntVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_difference" intVectorIterator_difference' ::  HoppyF.Ptr IntVectorIterator -> HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__IntVectorIterator_subtract" intVectorIterator_subtract' ::  HoppyF.Ptr IntVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr IntVectorIterator)
foreign import ccall "genpop__IntVectorIterator_at" intVectorIterator_at' ::  HoppyF.Ptr IntVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "genpop__IntVectorIterator_atConst" intVectorIterator_atConst' ::  HoppyF.Ptr IntVectorIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
foreign import ccall "gendel__IntVectorIterator" delete'IntVectorIterator :: HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__IntVectorIterator" deletePtr'IntVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr IntVectorIteratorConst -> HoppyP.IO ())
foreign import ccall "genpop__Manager_Create" manager_Create' ::  HoppyP.IO (HoppyF.Ptr Manager)
foreign import ccall "genpop__Manager_Get" manager_Get' ::  HoppyP.IO (HoppyF.Ptr Manager)
foreign import ccall "genpop__Manager_Destroy" manager_Destroy' ::  HoppyP.IO ()
foreign import ccall "genpop__Manager_getVersionAsString" manager_getVersionAsString' ::  HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_getVersionLongAsString" manager_getVersionLongAsString' ::  HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_WriteConfig" manager_WriteConfig' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetOptions" manager_GetOptions' ::  HoppyF.Ptr ManagerConst -> HoppyP.IO (HoppyF.Ptr Options)
foreign import ccall "genpop__Manager_AddDriver" manager_AddDriver' ::  HoppyF.Ptr Manager -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RemoveDriver" manager_RemoveDriver' ::  HoppyF.Ptr Manager -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetControllerNodeId" manager_GetControllerNodeId' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetSUCNodeId" manager_GetSUCNodeId' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_IsPrimaryController" manager_IsPrimaryController' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsStaticUpdateController" manager_IsStaticUpdateController' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsBridgeController" manager_IsBridgeController' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetLibraryVersion" manager_GetLibraryVersion' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetLibraryTypeName" manager_GetLibraryTypeName' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetSendQueueCount" manager_GetSendQueueCount' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Manager_LogDriverStatistics" manager_LogDriverStatistics' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetControllerPath" manager_GetControllerPath' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetPollInterval" manager_GetPollInterval' ::  HoppyF.Ptr Manager -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Manager_SetPollInterval" manager_SetPollInterval' ::  HoppyF.Ptr Manager -> HoppyFC.CInt -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Manager_enablePoll" manager_enablePoll' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_enablePoll_" manager_enablePoll_' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_DisablePoll" manager_DisablePoll' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_isPolled" manager_isPolled' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SetPollIntensity" manager_SetPollIntensity' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetPollIntensity" manager_GetPollIntensity' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_RefreshNodeInfo" manager_RefreshNodeInfo' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RequestNodeState" manager_RequestNodeState' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RequestNodeDynamic" manager_RequestNodeDynamic' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsNodeListeningDevice" manager_IsNodeListeningDevice' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsNodeFrequentListeningDevice" manager_IsNodeFrequentListeningDevice' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsNodeBeamingDevice" manager_IsNodeBeamingDevice' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsNodeRoutingDevice" manager_IsNodeRoutingDevice' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsNodeSecurityDevice" manager_IsNodeSecurityDevice' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetNodeMaxBaudRate" manager_GetNodeMaxBaudRate' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUInt
foreign import ccall "genpop__Manager_GetNodeVersion" manager_GetNodeVersion' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetNodeSecurity" manager_GetNodeSecurity' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_IsNodeZWavePlus" manager_IsNodeZWavePlus' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetNodeBasic" manager_GetNodeBasic' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetNodeGeneric" manager_GetNodeGeneric' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetNodeSpecific" manager_GetNodeSpecific' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetNodeType" manager_GetNodeType' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeNeighbors" manager_GetNodeNeighbors' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyP.IO HoppyFC.CUInt
foreign import ccall "genpop__Manager_GetNodeManufacturerName" manager_GetNodeManufacturerName' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeProductName" manager_GetNodeProductName' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeName" manager_GetNodeName' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeLocation" manager_GetNodeLocation' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeManufacturerId" manager_GetNodeManufacturerId' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeProductType" manager_GetNodeProductType' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeProductId" manager_GetNodeProductId' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_SetNodeManufacturerName" manager_SetNodeManufacturerName' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SetNodeProductName" manager_SetNodeProductName' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SetNodeName" manager_SetNodeName' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SetNodeLocation" manager_SetNodeLocation' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SetNodeOn" manager_SetNodeOn' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SetNodeOff" manager_SetNodeOff' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SetNodeLevel" manager_SetNodeLevel' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_IsNodeInfoReceived" manager_IsNodeInfoReceived' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_getNodeClassInformation" manager_getNodeClassInformation' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_getNodeClassInformation_" manager_getNodeClassInformation_' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyF.Ptr M2.StdString -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsNodeAwake" manager_IsNodeAwake' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsNodeFailed" manager_IsNodeFailed' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetNodeQueryStage" manager_GetNodeQueryStage' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeDeviceType" manager_GetNodeDeviceType' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUShort
foreign import ccall "genpop__Manager_GetNodeDeviceTypeString" manager_GetNodeDeviceTypeString' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodeRole" manager_GetNodeRole' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetNodeRoleString" manager_GetNodeRoleString' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetNodePlusType" manager_GetNodePlusType' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetNodePlusTypeString" manager_GetNodePlusTypeString' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_GetValueLabel" manager_GetValueLabel' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_SetValueLabel" manager_SetValueLabel' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetValueUnits" manager_GetValueUnits' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_SetValueUnits" manager_SetValueUnits' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetValueHelp" manager_GetValueHelp' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_SetValueHelp" manager_SetValueHelp' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetValueMin" manager_GetValueMin' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Manager_GetValueMax" manager_GetValueMax' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Manager_IsValueReadOnly" manager_IsValueReadOnly' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsValueWriteOnly" manager_IsValueWriteOnly' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsValueSet" manager_IsValueSet' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_IsValuePolled" manager_IsValuePolled' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueAsBool" manager_GetValueAsBool' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueAsByte" manager_GetValueAsByte' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueAsFloat" manager_GetValueAsFloat' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueAsInt" manager_GetValueAsInt' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueAsShort" manager_GetValueAsShort' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CShort -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueAsString" manager_GetValueAsString' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdString -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueAsRaw" manager_GetValueAsRaw' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueListSelectionString" manager_GetValueListSelectionString' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdString -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueListSelection" manager_GetValueListSelection' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueListItems" manager_GetValueListItems' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr StringVector -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueListValues" manager_GetValueListValues' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr IntVector -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetValueFloatPrecision" manager_GetValueFloatPrecision' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setBoolValue" manager_setBoolValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setByteValue" manager_setByteValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setFloatValue" manager_setFloatValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setIntValue" manager_setIntValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setShortValue" manager_setShortValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CShort -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setRawValue" manager_setRawValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SetStringValue" manager_SetStringValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SetValueListSelection" manager_SetValueListSelection' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RefreshValue" manager_RefreshValue' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SetChangeVerified" manager_SetChangeVerified' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetChangeVerified" manager_GetChangeVerified' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_PressButton" manager_PressButton' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_ReleaseButton" manager_ReleaseButton' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetNumSwitchPoints" manager_GetNumSwitchPoints' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_SetSwitchPoint" manager_SetSwitchPoint' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RemoveSwitchPoint" manager_RemoveSwitchPoint' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_ClearSwitchPoints" manager_ClearSwitchPoints' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetSwitchPoint" manager_GetSwitchPoint' ::  HoppyF.Ptr Manager -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyF.Ptr HoppyFC.CUChar -> HoppyF.Ptr HoppyFC.CUChar -> HoppyF.Ptr HoppyDI.Int8 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SwitchAllOn" manager_SwitchAllOn' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SwitchAllOff" manager_SwitchAllOff' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO ()
foreign import ccall "genpop__Manager_setConfigParam_" manager_setConfigParam_' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CInt -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setConfigParam" manager_setConfigParam' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RequestConfigParam" manager_RequestConfigParam' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_RequestAllConfigParams" manager_RequestAllConfigParams' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_GetNumGroups" manager_GetNumGroups' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_getAssociations_" manager_getAssociations_' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyP.IO HoppyFC.CUInt
foreign import ccall "genpop__Manager_GetMaxAssociations" manager_GetMaxAssociations' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetGroupLabel" manager_GetGroupLabel' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_AddAssociation" manager_AddAssociation' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_RemoveAssociation" manager_RemoveAssociation' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
foreign import ccall "genpop__Manager_AddWatcher" manager_AddWatcher' ::  HoppyF.Ptr Manager -> HoppyF.FunPtr (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RemoveWatcher" manager_RemoveWatcher' ::  HoppyF.Ptr Manager -> HoppyF.FunPtr (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_ResetController" manager_ResetController' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SoftReset" manager_SoftReset' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO ()
foreign import ccall "genpop__Manager_CancelControllerCommand" manager_CancelControllerCommand' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_TestNetworkNode" manager_TestNetworkNode' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUInt -> HoppyP.IO ()
foreign import ccall "genpop__Manager_TestNetwork" manager_TestNetwork' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUInt -> HoppyP.IO ()
foreign import ccall "genpop__Manager_HealNetworkNode" manager_HealNetworkNode' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Manager_HealNetwork" manager_HealNetwork' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Manager_AddNode" manager_AddNode' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RemoveNode" manager_RemoveNode' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RemoveFailedNode" manager_RemoveFailedNode' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_HasNodeFailed" manager_HasNodeFailed' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RequestNodeNeighborUpdate" manager_RequestNodeNeighborUpdate' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_AssignReturnRoute" manager_AssignReturnRoute' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_DeleteAllReturnRoutes" manager_DeleteAllReturnRoutes' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SendNodeInformation" manager_SendNodeInformation' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_CreateNewPrimary" manager_CreateNewPrimary' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_ReceiveConfiguration" manager_ReceiveConfiguration' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_ReplaceFailedNode" manager_ReplaceFailedNode' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_TransferPrimaryRole" manager_TransferPrimaryRole' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RequestNetworkUpdate" manager_RequestNetworkUpdate' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_ReplicationSend" manager_ReplicationSend' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_CreateButton" manager_CreateButton' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_DeleteButton" manager_DeleteButton' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetNumScenes" manager_GetNumScenes' ::  HoppyF.Ptr Manager -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_GetAllScenes" manager_GetAllScenes' ::  HoppyF.Ptr Manager -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_RemoveAllScenes" manager_RemoveAllScenes' ::  HoppyF.Ptr Manager -> HoppyDW.Word32 -> HoppyP.IO ()
foreign import ccall "genpop__Manager_CreateScene" manager_CreateScene' ::  HoppyF.Ptr Manager -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Manager_RemoveScene" manager_RemoveScene' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneBoolValue" manager_addSceneBoolValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneByteValue" manager_addSceneByteValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneFloatValue" manager_addSceneFloatValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneIntValue" manager_addSceneIntValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneShortValue" manager_addSceneShortValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CShort -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneStringValue" manager_addSceneStringValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneValueListSelectionString" manager_addSceneValueListSelectionString' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_addSceneValueListSelectionBool" manager_addSceneValueListSelectionBool' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_RemoveSceneValue" manager_RemoveSceneValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SceneGetValues" manager_SceneGetValues' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDVector -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Manager_SceneGetValueAsBool" manager_SceneGetValueAsBool' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SceneGetValueAsByte" manager_SceneGetValueAsByte' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SceneGetValueAsFloat" manager_SceneGetValueAsFloat' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SceneGetValueAsInt" manager_SceneGetValueAsInt' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SceneGetValueAsShort" manager_SceneGetValueAsShort' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CShort -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_SceneGetValueAsString" manager_SceneGetValueAsString' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdString -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_sceneGetValueListSelectionAsString" manager_sceneGetValueListSelectionAsString' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdString -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_sceneGetValueListSelectionAsInt" manager_sceneGetValueListSelectionAsInt' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneBoolValue" manager_setSceneBoolValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneByteValue" manager_setSceneByteValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneFloatValue" manager_setSceneFloatValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneIntValue" manager_setSceneIntValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneShortValue" manager_setSceneShortValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CShort -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneStringValue" manager_setSceneStringValue' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneValueListSelectionAsString" manager_setSceneValueListSelectionAsString' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_setSceneValueListSelectionAsInt" manager_setSceneValueListSelectionAsInt' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr ValueIDConst -> HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_GetSceneLabel" manager_GetSceneLabel' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Manager_SetSceneLabel" manager_SetSceneLabel' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Manager_SceneExists" manager_SceneExists' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Manager_ActivateScene" manager_ActivateScene' ::  HoppyF.Ptr Manager -> HoppyFC.CUChar -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Notification_GetType" notification_GetType' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Notification_GetHomeId" notification_GetHomeId' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyDW.Word32
foreign import ccall "genpop__Notification_GetNodeId" notification_GetNodeId' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Notification_GetValueID" notification_GetValueID' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "genpop__Notification_GetGroupIdx" notification_GetGroupIdx' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Notification_GetEvent" notification_GetEvent' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Notification_GetButtonId" notification_GetButtonId' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Notification_GetSceneId" notification_GetSceneId' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Notification_GetByte" notification_GetByte' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__Notification_GetAsString" notification_GetAsString' ::  HoppyF.Ptr NotificationConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__Options_Create" options_Create' ::  HoppyF.Ptr M2.StdStringConst -> HoppyF.Ptr M2.StdStringConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO (HoppyF.Ptr Options)
foreign import ccall "genpop__Options_Destroy" options_Destroy' ::  HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_Get" options_Get' ::  HoppyP.IO (HoppyF.Ptr Options)
foreign import ccall "genpop__Options_Lock" options_Lock' ::  HoppyF.Ptr Options -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_AddOptionBool" options_AddOptionBool' ::  HoppyF.Ptr Options -> HoppyF.Ptr M2.StdStringConst -> HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_AddOptionInt" options_AddOptionInt' ::  HoppyF.Ptr Options -> HoppyF.Ptr M2.StdStringConst -> HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_AddOptionString" options_AddOptionString' ::  HoppyF.Ptr Options -> HoppyF.Ptr M2.StdStringConst -> HoppyF.Ptr M2.StdStringConst -> HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_GetOptionAsBool" options_GetOptionAsBool' ::  HoppyF.Ptr Options -> HoppyF.Ptr M2.StdStringConst -> HoppyF.Ptr HoppyFHR.CBool -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_GetOptionAsInt" options_GetOptionAsInt' ::  HoppyF.Ptr Options -> HoppyF.Ptr M2.StdStringConst -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_GetOptionAsString" options_GetOptionAsString' ::  HoppyF.Ptr Options -> HoppyF.Ptr M2.StdStringConst -> HoppyF.Ptr M2.StdString -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Options_GetOptionType" options_GetOptionType' ::  HoppyF.Ptr Options -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Options_AreLocked" options_AreLocked' ::  HoppyF.Ptr OptionsConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StringVector_new" stringVector_new' ::  HoppyP.IO (HoppyF.Ptr StringVector)
foreign import ccall "genpop__StringVector_newCopy" stringVector_newCopy' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO (HoppyF.Ptr StringVector)
foreign import ccall "genpop__StringVector_at" stringVector_at' ::  HoppyF.Ptr StringVector -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr M2.StdString)
foreign import ccall "genpop__StringVector_atConst" stringVector_atConst' ::  HoppyF.Ptr StringVectorConst -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__StringVector_back" stringVector_back' ::  HoppyF.Ptr StringVector -> HoppyP.IO (HoppyF.Ptr M2.StdString)
foreign import ccall "genpop__StringVector_backConst" stringVector_backConst' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__StringVector_begin" stringVector_begin' ::  HoppyF.Ptr StringVector -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVector_beginConst" stringVector_beginConst' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVector_capacity" stringVector_capacity' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__StringVector_clear" stringVector_clear' ::  HoppyF.Ptr StringVector -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_empty" stringVector_empty' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StringVector_end" stringVector_end' ::  HoppyF.Ptr StringVector -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVector_endConst" stringVector_endConst' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVector_erase" stringVector_erase' ::  HoppyF.Ptr StringVector -> HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_eraseRange" stringVector_eraseRange' ::  HoppyF.Ptr StringVector -> HoppyF.Ptr StringVectorIteratorConst -> HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_front" stringVector_front' ::  HoppyF.Ptr StringVector -> HoppyP.IO (HoppyF.Ptr M2.StdString)
foreign import ccall "genpop__StringVector_frontConst" stringVector_frontConst' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__StringVector_insert" stringVector_insert' ::  HoppyF.Ptr StringVector -> HoppyF.Ptr StringVectorIteratorConst -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVector_maxSize" stringVector_maxSize' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__StringVector_popBack" stringVector_popBack' ::  HoppyF.Ptr StringVector -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_pushBack" stringVector_pushBack' ::  HoppyF.Ptr StringVector -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_reserve" stringVector_reserve' ::  HoppyF.Ptr StringVector -> HoppyFC.CSize -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_resize" stringVector_resize' ::  HoppyF.Ptr StringVector -> HoppyFC.CSize -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_resizeWith" stringVector_resizeWith' ::  HoppyF.Ptr StringVector -> HoppyFC.CSize -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_shrinkToFit" stringVector_shrinkToFit' ::  HoppyF.Ptr StringVector -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_size" stringVector_size' ::  HoppyF.Ptr StringVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__StringVector_swap" stringVector_swap' ::  HoppyF.Ptr StringVector -> HoppyF.Ptr StringVector -> HoppyP.IO ()
foreign import ccall "genpop__StringVector_ASSIGN" stringVector_ASSIGN' ::  HoppyF.Ptr StringVector -> HoppyF.Ptr StringVectorConst -> HoppyP.IO (HoppyF.Ptr StringVector)
foreign import ccall "gendel__StringVector" delete'StringVector :: HoppyF.Ptr StringVectorConst -> HoppyP.IO ()
foreign import ccall "&gendel__StringVector" deletePtr'StringVector :: HoppyF.FunPtr (HoppyF.Ptr StringVectorConst -> HoppyP.IO ())
foreign import ccall "genpop__StringVectorConstIterator_newFromNonconst" stringVectorConstIterator_newFromNonconst' ::  HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_new" stringVectorConstIterator_new' ::  HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_newCopy" stringVectorConstIterator_newCopy' ::  HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_deconst" stringVectorConstIterator_deconst' ::  HoppyF.Ptr StringVectorConstIteratorConst -> HoppyF.Ptr StringVector -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorConstIterator_getConst" stringVectorConstIterator_getConst' ::  HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__StringVectorConstIterator_EQ" stringVectorConstIterator_EQ' ::  HoppyF.Ptr StringVectorConstIteratorConst -> HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StringVectorConstIterator_NE" stringVectorConstIterator_NE' ::  HoppyF.Ptr StringVectorConstIteratorConst -> HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StringVectorConstIterator_ASSIGN" stringVectorConstIterator_ASSIGN' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_next" stringVectorConstIterator_next' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_prev" stringVectorConstIterator_prev' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_plus" stringVectorConstIterator_plus' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_add" stringVectorConstIterator_add' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_minus" stringVectorConstIterator_minus' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_difference" stringVectorConstIterator_difference' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__StringVectorConstIterator_subtract" stringVectorConstIterator_subtract' ::  HoppyF.Ptr StringVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorConstIterator)
foreign import ccall "genpop__StringVectorConstIterator_atConst" stringVectorConstIterator_atConst' ::  HoppyF.Ptr StringVectorConstIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "gendel__StringVectorConstIterator" delete'StringVectorConstIterator :: HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__StringVectorConstIterator" deletePtr'StringVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr StringVectorConstIteratorConst -> HoppyP.IO ())
foreign import ccall "genpop__StringVectorIterator_new" stringVectorIterator_new' ::  HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_newCopy" stringVectorIterator_newCopy' ::  HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_get" stringVectorIterator_get' ::  HoppyF.Ptr StringVectorIterator -> HoppyP.IO (HoppyF.Ptr M2.StdString)
foreign import ccall "genpop__StringVectorIterator_getConst" stringVectorIterator_getConst' ::  HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "genpop__StringVectorIterator_put" stringVectorIterator_put' ::  HoppyF.Ptr StringVectorIterator -> HoppyF.Ptr M2.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__StringVectorIterator_EQ" stringVectorIterator_EQ' ::  HoppyF.Ptr StringVectorIteratorConst -> HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StringVectorIterator_NE" stringVectorIterator_NE' ::  HoppyF.Ptr StringVectorIteratorConst -> HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StringVectorIterator_ASSIGN" stringVectorIterator_ASSIGN' ::  HoppyF.Ptr StringVectorIterator -> HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_next" stringVectorIterator_next' ::  HoppyF.Ptr StringVectorIterator -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_prev" stringVectorIterator_prev' ::  HoppyF.Ptr StringVectorIterator -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_plus" stringVectorIterator_plus' ::  HoppyF.Ptr StringVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_add" stringVectorIterator_add' ::  HoppyF.Ptr StringVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_minus" stringVectorIterator_minus' ::  HoppyF.Ptr StringVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_difference" stringVectorIterator_difference' ::  HoppyF.Ptr StringVectorIterator -> HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__StringVectorIterator_subtract" stringVectorIterator_subtract' ::  HoppyF.Ptr StringVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr StringVectorIterator)
foreign import ccall "genpop__StringVectorIterator_at" stringVectorIterator_at' ::  HoppyF.Ptr StringVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr M2.StdString)
foreign import ccall "genpop__StringVectorIterator_atConst" stringVectorIterator_atConst' ::  HoppyF.Ptr StringVectorIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr M2.StdStringConst)
foreign import ccall "gendel__StringVectorIterator" delete'StringVectorIterator :: HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__StringVectorIterator" deletePtr'StringVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr StringVectorIteratorConst -> HoppyP.IO ())
foreign import ccall "genpop__ValueID_new" valueID_new' ::  HoppyFC.CUInt -> HoppyFC.CUChar -> HoppyFC.CInt -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr ValueID)
foreign import ccall "genpop__ValueID_unpack" valueID_unpack' ::  HoppyDW.Word32 -> HoppyFC.CULLong -> HoppyP.IO (HoppyF.Ptr ValueID)
foreign import ccall "genpop__ValueID_GetHomeId" valueID_GetHomeId' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyDW.Word32
foreign import ccall "genpop__ValueID_GetNodeId" valueID_GetNodeId' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__ValueID_GetGenre" valueID_GetGenre' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__ValueID_GetCommandClassId" valueID_GetCommandClassId' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__ValueID_GetInstance" valueID_GetInstance' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__ValueID_GetIndex" valueID_GetIndex' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CUChar
foreign import ccall "genpop__ValueID_GetType" valueID_GetType' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__ValueID_GetId" valueID_GetId' ::  HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFC.CULLong
foreign import ccall "genpop__ValueID_EQ" valueID_EQ' ::  HoppyF.Ptr ValueIDConst -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__ValueID_NE" valueID_NE' ::  HoppyF.Ptr ValueIDConst -> HoppyF.Ptr ValueIDConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "gendel__ValueID" delete'ValueID :: HoppyF.Ptr ValueIDConst -> HoppyP.IO ()
foreign import ccall "&gendel__ValueID" deletePtr'ValueID :: HoppyF.FunPtr (HoppyF.Ptr ValueIDConst -> HoppyP.IO ())
foreign import ccall "genpop__ValueIDVector_new" valueIDVector_new' ::  HoppyP.IO (HoppyF.Ptr ValueIDVector)
foreign import ccall "genpop__ValueIDVector_newCopy" valueIDVector_newCopy' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVector)
foreign import ccall "genpop__ValueIDVector_at" valueIDVector_at' ::  HoppyF.Ptr ValueIDVector -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr ValueID)
foreign import ccall "genpop__ValueIDVector_atConst" valueIDVector_atConst' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "genpop__ValueIDVector_back" valueIDVector_back' ::  HoppyF.Ptr ValueIDVector -> HoppyP.IO (HoppyF.Ptr ValueID)
foreign import ccall "genpop__ValueIDVector_backConst" valueIDVector_backConst' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "genpop__ValueIDVector_begin" valueIDVector_begin' ::  HoppyF.Ptr ValueIDVector -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVector_beginConst" valueIDVector_beginConst' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVector_capacity" valueIDVector_capacity' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__ValueIDVector_clear" valueIDVector_clear' ::  HoppyF.Ptr ValueIDVector -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_empty" valueIDVector_empty' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__ValueIDVector_end" valueIDVector_end' ::  HoppyF.Ptr ValueIDVector -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVector_endConst" valueIDVector_endConst' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVector_erase" valueIDVector_erase' ::  HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_eraseRange" valueIDVector_eraseRange' ::  HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_front" valueIDVector_front' ::  HoppyF.Ptr ValueIDVector -> HoppyP.IO (HoppyF.Ptr ValueID)
foreign import ccall "genpop__ValueIDVector_frontConst" valueIDVector_frontConst' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "genpop__ValueIDVector_insert" valueIDVector_insert' ::  HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyF.Ptr ValueIDConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVector_maxSize" valueIDVector_maxSize' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__ValueIDVector_popBack" valueIDVector_popBack' ::  HoppyF.Ptr ValueIDVector -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_pushBack" valueIDVector_pushBack' ::  HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDConst -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_reserve" valueIDVector_reserve' ::  HoppyF.Ptr ValueIDVector -> HoppyFC.CSize -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_resizeWith" valueIDVector_resizeWith' ::  HoppyF.Ptr ValueIDVector -> HoppyFC.CSize -> HoppyF.Ptr ValueIDConst -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_shrinkToFit" valueIDVector_shrinkToFit' ::  HoppyF.Ptr ValueIDVector -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_size" valueIDVector_size' ::  HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__ValueIDVector_swap" valueIDVector_swap' ::  HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDVector -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVector_ASSIGN" valueIDVector_ASSIGN' ::  HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVector)
foreign import ccall "gendel__ValueIDVector" delete'ValueIDVector :: HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO ()
foreign import ccall "&gendel__ValueIDVector" deletePtr'ValueIDVector :: HoppyF.FunPtr (HoppyF.Ptr ValueIDVectorConst -> HoppyP.IO ())
foreign import ccall "genpop__ValueIDVectorConstIterator_newFromNonconst" valueIDVectorConstIterator_newFromNonconst' ::  HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_new" valueIDVectorConstIterator_new' ::  HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_newCopy" valueIDVectorConstIterator_newCopy' ::  HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_deconst" valueIDVectorConstIterator_deconst' ::  HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyF.Ptr ValueIDVector -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_getConst" valueIDVectorConstIterator_getConst' ::  HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "genpop__ValueIDVectorConstIterator_EQ" valueIDVectorConstIterator_EQ' ::  HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__ValueIDVectorConstIterator_NE" valueIDVectorConstIterator_NE' ::  HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__ValueIDVectorConstIterator_ASSIGN" valueIDVectorConstIterator_ASSIGN' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_next" valueIDVectorConstIterator_next' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_prev" valueIDVectorConstIterator_prev' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_plus" valueIDVectorConstIterator_plus' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_add" valueIDVectorConstIterator_add' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_minus" valueIDVectorConstIterator_minus' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_difference" valueIDVectorConstIterator_difference' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__ValueIDVectorConstIterator_subtract" valueIDVectorConstIterator_subtract' ::  HoppyF.Ptr ValueIDVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorConstIterator)
foreign import ccall "genpop__ValueIDVectorConstIterator_atConst" valueIDVectorConstIterator_atConst' ::  HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "gendel__ValueIDVectorConstIterator" delete'ValueIDVectorConstIterator :: HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__ValueIDVectorConstIterator" deletePtr'ValueIDVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr ValueIDVectorConstIteratorConst -> HoppyP.IO ())
foreign import ccall "genpop__ValueIDVectorIterator_new" valueIDVectorIterator_new' ::  HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_newCopy" valueIDVectorIterator_newCopy' ::  HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_get" valueIDVectorIterator_get' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyP.IO (HoppyF.Ptr ValueID)
foreign import ccall "genpop__ValueIDVectorIterator_getConst" valueIDVectorIterator_getConst' ::  HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "genpop__ValueIDVectorIterator_put" valueIDVectorIterator_put' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyF.Ptr ValueIDConst -> HoppyP.IO ()
foreign import ccall "genpop__ValueIDVectorIterator_EQ" valueIDVectorIterator_EQ' ::  HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__ValueIDVectorIterator_NE" valueIDVectorIterator_NE' ::  HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__ValueIDVectorIterator_ASSIGN" valueIDVectorIterator_ASSIGN' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_next" valueIDVectorIterator_next' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_prev" valueIDVectorIterator_prev' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_plus" valueIDVectorIterator_plus' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_add" valueIDVectorIterator_add' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_minus" valueIDVectorIterator_minus' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_difference" valueIDVectorIterator_difference' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__ValueIDVectorIterator_subtract" valueIDVectorIterator_subtract' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDVectorIterator)
foreign import ccall "genpop__ValueIDVectorIterator_at" valueIDVectorIterator_at' ::  HoppyF.Ptr ValueIDVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueID)
foreign import ccall "genpop__ValueIDVectorIterator_atConst" valueIDVectorIterator_atConst' ::  HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr ValueIDConst)
foreign import ccall "gendel__ValueIDVectorIterator" delete'ValueIDVectorIterator :: HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__ValueIDVectorIterator" deletePtr'ValueIDVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr ValueIDVectorIteratorConst -> HoppyP.IO ())

haskellOnNotificationCallback_newFunPtr :: (NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()))
haskellOnNotificationCallback_newFunPtr f'hs = haskellOnNotificationCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = NotificationConst arg'1 in
  let arg'2' = arg'2 in
  (f'hs arg'1' arg'2')

haskellOnNotificationCallback_new :: (NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()))
haskellOnNotificationCallback_new f'hs = do
  f'p <- haskellOnNotificationCallback_newFunPtr f'hs
  haskellOnNotificationCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class IntVectorValue a where
  withIntVectorPtr :: a -> (IntVectorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} IntVectorConstPtr a => IntVectorValue a where
#else
instance IntVectorConstPtr a => IntVectorValue a where
#endif
  withIntVectorPtr = HoppyP.flip ($) . toIntVectorConst

class (HoppyFHR.CppPtr this) => IntVectorConstPtr this where
  toIntVectorConst :: this -> IntVectorConst

intVector_atConst :: (IntVectorValue arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVector_atConst arg'1 arg'2 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  (intVector_atConst' arg'1' arg'2')

intVector_backConst :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVector_backConst arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (intVector_backConst' arg'1')

intVector_beginConst :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO IntVectorConstIterator
intVector_beginConst arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorConstIterator
  (intVector_beginConst' arg'1')

intVector_capacity :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
intVector_capacity arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (intVector_capacity' arg'1')

intVector_empty :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
intVector_empty arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (intVector_empty' arg'1')

intVector_endConst :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO IntVectorConstIterator
intVector_endConst arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorConstIterator
  (intVector_endConst' arg'1')

intVector_frontConst :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVector_frontConst arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (intVector_frontConst' arg'1')

intVector_maxSize :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
intVector_maxSize arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (intVector_maxSize' arg'1')

intVector_size :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
intVector_size arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (intVector_size' arg'1')

class (IntVectorConstPtr this) => IntVectorPtr this where
  toIntVector :: this -> IntVector

intVector_at :: (IntVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVector_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (intVector_at' arg'1' arg'2')

intVector_back :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVector_back arg'1 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  (intVector_back' arg'1')

intVector_begin :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.IO IntVectorIterator
intVector_begin arg'1 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorIterator
  (intVector_begin' arg'1')

intVector_clear :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
intVector_clear arg'1 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  (intVector_clear' arg'1')

intVector_end :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.IO IntVectorIterator
intVector_end arg'1 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorIterator
  (intVector_end' arg'1')

intVector_erase :: (IntVectorPtr arg'1, IntVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
intVector_erase arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  withIntVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (intVector_erase' arg'1' arg'2')

intVector_eraseRange :: (IntVectorPtr arg'1, IntVectorIteratorValue arg'2, IntVectorIteratorValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
intVector_eraseRange arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  withIntVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  withIntVectorIteratorPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (intVector_eraseRange' arg'1' arg'2' arg'3')

intVector_front :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVector_front arg'1 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  (intVector_front' arg'1')

intVector_insert :: (IntVectorPtr arg'1, IntVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO IntVectorIterator
intVector_insert arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  withIntVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorIterator
  (intVector_insert' arg'1' arg'2' arg'3')

intVector_popBack :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
intVector_popBack arg'1 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  (intVector_popBack' arg'1')

intVector_pushBack :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
intVector_pushBack arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (intVector_pushBack' arg'1' arg'2')

intVector_reserve :: (IntVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ()
intVector_reserve arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (intVector_reserve' arg'1' arg'2')

intVector_resize :: (IntVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ()
intVector_resize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (intVector_resize' arg'1' arg'2')

intVector_resizeWith :: (IntVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.Int -> HoppyP.IO ()
intVector_resizeWith arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (intVector_resizeWith' arg'1' arg'2' arg'3')

intVector_shrinkToFit :: (IntVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
intVector_shrinkToFit arg'1 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  (intVector_shrinkToFit' arg'1')

intVector_swap :: (IntVectorPtr arg'1, IntVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
intVector_swap arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toIntVector arg'2) $ \arg'2' ->
  (intVector_swap' arg'1' arg'2')

intVector_ASSIGN :: (IntVectorPtr arg'1, IntVectorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO IntVector
intVector_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVector arg'1) $ \arg'1' ->
  withIntVectorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap IntVector
  (intVector_ASSIGN' arg'1' arg'2')

data IntVectorConst =
    IntVectorConst (HoppyF.Ptr IntVectorConst)
  | IntVectorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr IntVectorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq IntVectorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord IntVectorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castIntVectorToConst :: IntVector -> IntVectorConst
castIntVectorToConst (IntVector ptr') = IntVectorConst $ HoppyF.castPtr ptr'
castIntVectorToConst (IntVectorGc fptr' ptr') = IntVectorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr IntVectorConst where
  nullptr = IntVectorConst HoppyF.nullPtr
  
  withCppPtr (IntVectorConst ptr') f' = f' ptr'
  withCppPtr (IntVectorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (IntVectorConst ptr') = ptr'
  toPtr (IntVectorConstGc _ ptr') = ptr'
  
  touchCppPtr (IntVectorConst _) = HoppyP.return ()
  touchCppPtr (IntVectorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable IntVectorConst where
  delete (IntVectorConst ptr') = delete'IntVector ptr'
  delete (IntVectorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "IntVectorConst", " object."]
  
  toGc this'@(IntVectorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip IntVectorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'IntVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(IntVectorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable IntVectorConst IntVector where copy = intVector_newCopy

instance IntVectorConstPtr IntVectorConst where
  toIntVectorConst = HoppyP.id

data IntVector =
    IntVector (HoppyF.Ptr IntVector)
  | IntVectorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr IntVector)
  deriving (HoppyP.Show)

instance HoppyP.Eq IntVector where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord IntVector where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castIntVectorToNonconst :: IntVectorConst -> IntVector
castIntVectorToNonconst (IntVectorConst ptr') = IntVector $ HoppyF.castPtr ptr'
castIntVectorToNonconst (IntVectorConstGc fptr' ptr') = IntVectorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr IntVector where
  nullptr = IntVector HoppyF.nullPtr
  
  withCppPtr (IntVector ptr') f' = f' ptr'
  withCppPtr (IntVectorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (IntVector ptr') = ptr'
  toPtr (IntVectorGc _ ptr') = ptr'
  
  touchCppPtr (IntVector _) = HoppyP.return ()
  touchCppPtr (IntVectorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable IntVector where
  delete (IntVector ptr') = delete'IntVector $ (HoppyF.castPtr ptr' :: HoppyF.Ptr IntVectorConst)
  delete (IntVectorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "IntVector", " object."]
  
  toGc this'@(IntVector ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip IntVectorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'IntVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(IntVectorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable IntVector IntVector where copy = intVector_newCopy

instance IntVectorConstPtr IntVector where
  toIntVectorConst (IntVector ptr') = IntVectorConst $ (HoppyF.castPtr :: HoppyF.Ptr IntVector -> HoppyF.Ptr IntVectorConst) ptr'
  toIntVectorConst (IntVectorGc fptr' ptr') = IntVectorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr IntVector -> HoppyF.Ptr IntVectorConst) ptr'

instance IntVectorPtr IntVector where
  toIntVector = HoppyP.id

intVector_new ::  HoppyP.IO IntVector
intVector_new =
  HoppyP.fmap IntVector
  (intVector_new')

intVector_newCopy :: (IntVectorValue arg'1) => arg'1 -> HoppyP.IO IntVector
intVector_newCopy arg'1 =
  withIntVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap IntVector
  (intVector_newCopy' arg'1')

class IntVectorSuper a where
  downToIntVector :: a -> IntVector


class IntVectorSuperConst a where
  downToIntVectorConst :: a -> IntVectorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr IntVector)) IntVector where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance IntVectorValue a => HoppyFHR.Assignable IntVector a where
  assign x' y' = intVector_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr IntVector)) IntVector where
  decode = HoppyP.fmap IntVector . HoppyF.peek

instance HoppyFHR.HasContents IntVectorConst (HoppyP.Int) where
  toContents this' = do
    size' <- intVector_size this'
    HoppyP.mapM (HoppyFHR.decode <=< intVector_atConst this') [0..size'-1]

instance HoppyFHR.HasContents IntVector (HoppyP.Int) where
  toContents this' = do
    size' <- intVector_size this'
    HoppyP.mapM (HoppyFHR.decode <=< intVector_at this') [0..size'-1]

instance HoppyFHR.FromContents IntVector (HoppyP.Int) where
  fromContents values' = do
    vector' <- intVector_new
    intVector_reserve vector' $ HoppyFHR.coerceIntegral $ HoppyP.length values'
    HoppyP.mapM_ (intVector_pushBack vector') values'
    HoppyP.return vector'

class IntVectorConstIteratorValue a where
  withIntVectorConstIteratorPtr :: a -> (IntVectorConstIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} IntVectorConstIteratorConstPtr a => IntVectorConstIteratorValue a where
#else
instance IntVectorConstIteratorConstPtr a => IntVectorConstIteratorValue a where
#endif
  withIntVectorConstIteratorPtr = HoppyP.flip ($) . toIntVectorConstIteratorConst

class (HoppyFHR.CppPtr this) => IntVectorConstIteratorConstPtr this where
  toIntVectorConstIteratorConst :: this -> IntVectorConstIteratorConst

intVectorConstIterator_deconst :: (IntVectorConstIteratorValue arg'1, IntVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO IntVectorIterator
intVectorConstIterator_deconst arg'1 arg'2 =
  withIntVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.withCppPtr (toIntVector arg'2) $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorIterator
  (intVectorConstIterator_deconst' arg'1' arg'2')

intVectorConstIterator_getConst :: (IntVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVectorConstIterator_getConst arg'1 =
  withIntVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (intVectorConstIterator_getConst' arg'1')

intVectorConstIterator_EQ :: (IntVectorConstIteratorValue arg'1, IntVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
intVectorConstIterator_EQ arg'1 arg'2 =
  withIntVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withIntVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (intVectorConstIterator_EQ' arg'1' arg'2')

intVectorConstIterator_NE :: (IntVectorConstIteratorValue arg'1, IntVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
intVectorConstIterator_NE arg'1 arg'2 =
  withIntVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withIntVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (intVectorConstIterator_NE' arg'1' arg'2')

intVectorConstIterator_atConst :: (IntVectorConstIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVectorConstIterator_atConst arg'1 arg'2 =
  withIntVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  (intVectorConstIterator_atConst' arg'1' arg'2')

class (IntVectorConstIteratorConstPtr this) => IntVectorConstIteratorPtr this where
  toIntVectorConstIterator :: this -> IntVectorConstIterator

intVectorConstIterator_ASSIGN :: (IntVectorConstIteratorPtr arg'1, IntVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  withIntVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_ASSIGN' arg'1' arg'2')

intVectorConstIterator_next :: (IntVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_next arg'1 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_next' arg'1')

intVectorConstIterator_prev :: (IntVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_prev' arg'1')

intVectorConstIterator_plus :: (IntVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_plus' arg'1' arg'2')

intVectorConstIterator_add :: (IntVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_add' arg'1' arg'2')

intVectorConstIterator_minus :: (IntVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_minus' arg'1' arg'2')

intVectorConstIterator_difference :: (IntVectorConstIteratorPtr arg'1, IntVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
intVectorConstIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  withIntVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (intVectorConstIterator_difference' arg'1' arg'2')

intVectorConstIterator_subtract :: (IntVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_subtract' arg'1' arg'2')

data IntVectorConstIteratorConst =
    IntVectorConstIteratorConst (HoppyF.Ptr IntVectorConstIteratorConst)
  | IntVectorConstIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr IntVectorConstIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq IntVectorConstIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord IntVectorConstIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castIntVectorConstIteratorToConst :: IntVectorConstIterator -> IntVectorConstIteratorConst
castIntVectorConstIteratorToConst (IntVectorConstIterator ptr') = IntVectorConstIteratorConst $ HoppyF.castPtr ptr'
castIntVectorConstIteratorToConst (IntVectorConstIteratorGc fptr' ptr') = IntVectorConstIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr IntVectorConstIteratorConst where
  nullptr = IntVectorConstIteratorConst HoppyF.nullPtr
  
  withCppPtr (IntVectorConstIteratorConst ptr') f' = f' ptr'
  withCppPtr (IntVectorConstIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (IntVectorConstIteratorConst ptr') = ptr'
  toPtr (IntVectorConstIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (IntVectorConstIteratorConst _) = HoppyP.return ()
  touchCppPtr (IntVectorConstIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable IntVectorConstIteratorConst where
  delete (IntVectorConstIteratorConst ptr') = delete'IntVectorConstIterator ptr'
  delete (IntVectorConstIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "IntVectorConstIteratorConst", " object."]
  
  toGc this'@(IntVectorConstIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip IntVectorConstIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'IntVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(IntVectorConstIteratorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable IntVectorConstIteratorConst IntVectorConstIterator where copy = intVectorConstIterator_newCopy

instance IntVectorConstIteratorConstPtr IntVectorConstIteratorConst where
  toIntVectorConstIteratorConst = HoppyP.id

data IntVectorConstIterator =
    IntVectorConstIterator (HoppyF.Ptr IntVectorConstIterator)
  | IntVectorConstIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr IntVectorConstIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq IntVectorConstIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord IntVectorConstIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castIntVectorConstIteratorToNonconst :: IntVectorConstIteratorConst -> IntVectorConstIterator
castIntVectorConstIteratorToNonconst (IntVectorConstIteratorConst ptr') = IntVectorConstIterator $ HoppyF.castPtr ptr'
castIntVectorConstIteratorToNonconst (IntVectorConstIteratorConstGc fptr' ptr') = IntVectorConstIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr IntVectorConstIterator where
  nullptr = IntVectorConstIterator HoppyF.nullPtr
  
  withCppPtr (IntVectorConstIterator ptr') f' = f' ptr'
  withCppPtr (IntVectorConstIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (IntVectorConstIterator ptr') = ptr'
  toPtr (IntVectorConstIteratorGc _ ptr') = ptr'
  
  touchCppPtr (IntVectorConstIterator _) = HoppyP.return ()
  touchCppPtr (IntVectorConstIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable IntVectorConstIterator where
  delete (IntVectorConstIterator ptr') = delete'IntVectorConstIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr IntVectorConstIteratorConst)
  delete (IntVectorConstIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "IntVectorConstIterator", " object."]
  
  toGc this'@(IntVectorConstIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip IntVectorConstIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'IntVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(IntVectorConstIteratorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable IntVectorConstIterator IntVectorConstIterator where copy = intVectorConstIterator_newCopy

instance IntVectorConstIteratorConstPtr IntVectorConstIterator where
  toIntVectorConstIteratorConst (IntVectorConstIterator ptr') = IntVectorConstIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr IntVectorConstIterator -> HoppyF.Ptr IntVectorConstIteratorConst) ptr'
  toIntVectorConstIteratorConst (IntVectorConstIteratorGc fptr' ptr') = IntVectorConstIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr IntVectorConstIterator -> HoppyF.Ptr IntVectorConstIteratorConst) ptr'

instance IntVectorConstIteratorPtr IntVectorConstIterator where
  toIntVectorConstIterator = HoppyP.id

intVectorConstIterator_newFromNonconst :: (IntVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_newFromNonconst arg'1 =
  withIntVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_newFromNonconst' arg'1')

intVectorConstIterator_new ::  HoppyP.IO IntVectorConstIterator
intVectorConstIterator_new =
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_new')

intVectorConstIterator_newCopy :: (IntVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO IntVectorConstIterator
intVectorConstIterator_newCopy arg'1 =
  withIntVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap IntVectorConstIterator
  (intVectorConstIterator_newCopy' arg'1')

class IntVectorConstIteratorSuper a where
  downToIntVectorConstIterator :: a -> IntVectorConstIterator


class IntVectorConstIteratorSuperConst a where
  downToIntVectorConstIteratorConst :: a -> IntVectorConstIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr IntVectorConstIterator)) IntVectorConstIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance IntVectorConstIteratorValue a => HoppyFHR.Assignable IntVectorConstIterator a where
  assign x' y' = intVectorConstIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr IntVectorConstIterator)) IntVectorConstIterator where
  decode = HoppyP.fmap IntVectorConstIterator . HoppyF.peek

class IntVectorIteratorValue a where
  withIntVectorIteratorPtr :: a -> (IntVectorIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} IntVectorIteratorConstPtr a => IntVectorIteratorValue a where
#else
instance IntVectorIteratorConstPtr a => IntVectorIteratorValue a where
#endif
  withIntVectorIteratorPtr = HoppyP.flip ($) . toIntVectorIteratorConst

class (HoppyFHR.CppPtr this) => IntVectorIteratorConstPtr this where
  toIntVectorIteratorConst :: this -> IntVectorIteratorConst

intVectorIterator_getConst :: (IntVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVectorIterator_getConst arg'1 =
  withIntVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (intVectorIterator_getConst' arg'1')

intVectorIterator_EQ :: (IntVectorIteratorValue arg'1, IntVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
intVectorIterator_EQ arg'1 arg'2 =
  withIntVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withIntVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (intVectorIterator_EQ' arg'1' arg'2')

intVectorIterator_NE :: (IntVectorIteratorValue arg'1, IntVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
intVectorIterator_NE arg'1 arg'2 =
  withIntVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withIntVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (intVectorIterator_NE' arg'1' arg'2')

intVectorIterator_atConst :: (IntVectorIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVectorIterator_atConst arg'1 arg'2 =
  withIntVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  (intVectorIterator_atConst' arg'1' arg'2')

class (IntVectorIteratorConstPtr this) => IntVectorIteratorPtr this where
  toIntVectorIterator :: this -> IntVectorIterator

intVectorIterator_get :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVectorIterator_get arg'1 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  (intVectorIterator_get' arg'1')

intVectorIterator_put :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
intVectorIterator_put arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (intVectorIterator_put' arg'1' arg'2')

intVectorIterator_ASSIGN :: (IntVectorIteratorPtr arg'1, IntVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO IntVectorIterator
intVectorIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  withIntVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_ASSIGN' arg'1' arg'2')

intVectorIterator_next :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO IntVectorIterator
intVectorIterator_next arg'1 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_next' arg'1')

intVectorIterator_prev :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO IntVectorIterator
intVectorIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_prev' arg'1')

intVectorIterator_plus :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorIterator
intVectorIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_plus' arg'1' arg'2')

intVectorIterator_add :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorIterator
intVectorIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_add' arg'1' arg'2')

intVectorIterator_minus :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorIterator
intVectorIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_minus' arg'1' arg'2')

intVectorIterator_difference :: (IntVectorIteratorPtr arg'1, IntVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
intVectorIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  withIntVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (intVectorIterator_difference' arg'1' arg'2')

intVectorIterator_subtract :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO IntVectorIterator
intVectorIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_subtract' arg'1' arg'2')

intVectorIterator_at :: (IntVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr HoppyFC.CInt)
intVectorIterator_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toIntVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (intVectorIterator_at' arg'1' arg'2')

data IntVectorIteratorConst =
    IntVectorIteratorConst (HoppyF.Ptr IntVectorIteratorConst)
  | IntVectorIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr IntVectorIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq IntVectorIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord IntVectorIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castIntVectorIteratorToConst :: IntVectorIterator -> IntVectorIteratorConst
castIntVectorIteratorToConst (IntVectorIterator ptr') = IntVectorIteratorConst $ HoppyF.castPtr ptr'
castIntVectorIteratorToConst (IntVectorIteratorGc fptr' ptr') = IntVectorIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr IntVectorIteratorConst where
  nullptr = IntVectorIteratorConst HoppyF.nullPtr
  
  withCppPtr (IntVectorIteratorConst ptr') f' = f' ptr'
  withCppPtr (IntVectorIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (IntVectorIteratorConst ptr') = ptr'
  toPtr (IntVectorIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (IntVectorIteratorConst _) = HoppyP.return ()
  touchCppPtr (IntVectorIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable IntVectorIteratorConst where
  delete (IntVectorIteratorConst ptr') = delete'IntVectorIterator ptr'
  delete (IntVectorIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "IntVectorIteratorConst", " object."]
  
  toGc this'@(IntVectorIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip IntVectorIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'IntVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(IntVectorIteratorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable IntVectorIteratorConst IntVectorIterator where copy = intVectorIterator_newCopy

instance IntVectorIteratorConstPtr IntVectorIteratorConst where
  toIntVectorIteratorConst = HoppyP.id

data IntVectorIterator =
    IntVectorIterator (HoppyF.Ptr IntVectorIterator)
  | IntVectorIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr IntVectorIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq IntVectorIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord IntVectorIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castIntVectorIteratorToNonconst :: IntVectorIteratorConst -> IntVectorIterator
castIntVectorIteratorToNonconst (IntVectorIteratorConst ptr') = IntVectorIterator $ HoppyF.castPtr ptr'
castIntVectorIteratorToNonconst (IntVectorIteratorConstGc fptr' ptr') = IntVectorIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr IntVectorIterator where
  nullptr = IntVectorIterator HoppyF.nullPtr
  
  withCppPtr (IntVectorIterator ptr') f' = f' ptr'
  withCppPtr (IntVectorIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (IntVectorIterator ptr') = ptr'
  toPtr (IntVectorIteratorGc _ ptr') = ptr'
  
  touchCppPtr (IntVectorIterator _) = HoppyP.return ()
  touchCppPtr (IntVectorIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable IntVectorIterator where
  delete (IntVectorIterator ptr') = delete'IntVectorIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr IntVectorIteratorConst)
  delete (IntVectorIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "IntVectorIterator", " object."]
  
  toGc this'@(IntVectorIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip IntVectorIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'IntVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(IntVectorIteratorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable IntVectorIterator IntVectorIterator where copy = intVectorIterator_newCopy

instance IntVectorIteratorConstPtr IntVectorIterator where
  toIntVectorIteratorConst (IntVectorIterator ptr') = IntVectorIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr IntVectorIterator -> HoppyF.Ptr IntVectorIteratorConst) ptr'
  toIntVectorIteratorConst (IntVectorIteratorGc fptr' ptr') = IntVectorIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr IntVectorIterator -> HoppyF.Ptr IntVectorIteratorConst) ptr'

instance IntVectorIteratorPtr IntVectorIterator where
  toIntVectorIterator = HoppyP.id

intVectorIterator_new ::  HoppyP.IO IntVectorIterator
intVectorIterator_new =
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_new')

intVectorIterator_newCopy :: (IntVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO IntVectorIterator
intVectorIterator_newCopy arg'1 =
  withIntVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap IntVectorIterator
  (intVectorIterator_newCopy' arg'1')

class IntVectorIteratorSuper a where
  downToIntVectorIterator :: a -> IntVectorIterator


class IntVectorIteratorSuperConst a where
  downToIntVectorIteratorConst :: a -> IntVectorIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr IntVectorIterator)) IntVectorIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance IntVectorIteratorValue a => HoppyFHR.Assignable IntVectorIterator a where
  assign x' y' = intVectorIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr IntVectorIterator)) IntVectorIterator where
  decode = HoppyP.fmap IntVectorIterator . HoppyF.peek

class ManagerValue a where
  withManagerPtr :: a -> (ManagerConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} ManagerConstPtr a => ManagerValue a where
#else
instance ManagerConstPtr a => ManagerValue a where
#endif
  withManagerPtr = HoppyP.flip ($) . toManagerConst

class (HoppyFHR.CppPtr this) => ManagerConstPtr this where
  toManagerConst :: this -> ManagerConst

manager_GetOptions :: (ManagerValue arg'1) => arg'1 -> HoppyP.IO Options
manager_GetOptions arg'1 =
  withManagerPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap Options
  (manager_GetOptions' arg'1')

class (ManagerConstPtr this) => ManagerPtr this where
  toManager :: this -> Manager

manager_WriteConfig :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO ()
manager_WriteConfig arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_WriteConfig' arg'1' arg'2')

manager_AddDriver :: (ManagerPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_AddDriver arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_AddDriver' arg'1' arg'2')

manager_RemoveDriver :: (ManagerPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_RemoveDriver arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_RemoveDriver' arg'1' arg'2')

manager_GetControllerNodeId :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyFC.CUChar
manager_GetControllerNodeId arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_GetControllerNodeId' arg'1' arg'2')

manager_GetSUCNodeId :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyFC.CUChar
manager_GetSUCNodeId arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_GetSUCNodeId' arg'1' arg'2')

manager_IsPrimaryController :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_IsPrimaryController arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_IsPrimaryController' arg'1' arg'2')

manager_IsStaticUpdateController :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_IsStaticUpdateController arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_IsStaticUpdateController' arg'1' arg'2')

manager_IsBridgeController :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_IsBridgeController arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_IsBridgeController' arg'1' arg'2')

manager_GetLibraryVersion :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.String
manager_GetLibraryVersion arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetLibraryVersion' arg'1' arg'2')

manager_GetLibraryTypeName :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.String
manager_GetLibraryTypeName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetLibraryTypeName' arg'1' arg'2')

manager_GetSendQueueCount :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Int
manager_GetSendQueueCount arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap HoppyFHR.coerceIntegral
  (manager_GetSendQueueCount' arg'1' arg'2')

manager_LogDriverStatistics :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO ()
manager_LogDriverStatistics arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_LogDriverStatistics' arg'1' arg'2')

manager_GetControllerPath :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.String
manager_GetControllerPath arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetControllerPath' arg'1' arg'2')

manager_GetPollInterval :: (ManagerPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
manager_GetPollInterval arg'1 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (manager_GetPollInterval' arg'1')

manager_SetPollInterval :: (ManagerPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.Bool -> HoppyP.IO ()
manager_SetPollInterval arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  let arg'3' = if arg'3 then 1 else 0 in
  (manager_SetPollInterval' arg'1' arg'2' arg'3')

manager_enablePoll :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_enablePoll arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_enablePoll' arg'1' arg'2')

manager_enablePoll_ :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_enablePoll_ arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_enablePoll_' arg'1' arg'2' arg'3')

manager_DisablePoll :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_DisablePoll arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_DisablePoll' arg'1' arg'2')

manager_isPolled :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_isPolled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_isPolled' arg'1' arg'2')

manager_SetPollIntensity :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyFC.CUChar -> HoppyP.IO ()
manager_SetPollIntensity arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  (manager_SetPollIntensity' arg'1' arg'2' arg'3')

manager_GetPollIntensity :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CUChar
manager_GetPollIntensity arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (manager_GetPollIntensity' arg'1' arg'2')

manager_RefreshNodeInfo :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RefreshNodeInfo arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_RefreshNodeInfo' arg'1' arg'2' arg'3')

manager_RequestNodeState :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RequestNodeState arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_RequestNodeState' arg'1' arg'2' arg'3')

manager_RequestNodeDynamic :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RequestNodeDynamic arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_RequestNodeDynamic' arg'1' arg'2' arg'3')

manager_IsNodeListeningDevice :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeListeningDevice arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeListeningDevice' arg'1' arg'2' arg'3')

manager_IsNodeFrequentListeningDevice :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeFrequentListeningDevice arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeFrequentListeningDevice' arg'1' arg'2' arg'3')

manager_IsNodeBeamingDevice :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeBeamingDevice arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeBeamingDevice' arg'1' arg'2' arg'3')

manager_IsNodeRoutingDevice :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeRoutingDevice arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeRoutingDevice' arg'1' arg'2' arg'3')

manager_IsNodeSecurityDevice :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeSecurityDevice arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeSecurityDevice' arg'1' arg'2' arg'3')

manager_GetNodeMaxBaudRate :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUInt
manager_GetNodeMaxBaudRate arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeMaxBaudRate' arg'1' arg'2' arg'3')

manager_GetNodeVersion :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNodeVersion arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeVersion' arg'1' arg'2' arg'3')

manager_GetNodeSecurity :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNodeSecurity arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeSecurity' arg'1' arg'2' arg'3')

manager_IsNodeZWavePlus :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeZWavePlus arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeZWavePlus' arg'1' arg'2' arg'3')

manager_GetNodeBasic :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNodeBasic arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeBasic' arg'1' arg'2' arg'3')

manager_GetNodeGeneric :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNodeGeneric arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeGeneric' arg'1' arg'2' arg'3')

manager_GetNodeSpecific :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNodeSpecific arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeSpecific' arg'1' arg'2' arg'3')

manager_GetNodeType :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeType arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeType' arg'1' arg'2' arg'3')

manager_GetNodeNeighbors :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyP.IO HoppyFC.CUInt
manager_GetNodeNeighbors arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  (manager_GetNodeNeighbors' arg'1' arg'2' arg'3' arg'4')

manager_GetNodeManufacturerName :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeManufacturerName arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeManufacturerName' arg'1' arg'2' arg'3')

manager_GetNodeProductName :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeProductName arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeProductName' arg'1' arg'2' arg'3')

manager_GetNodeName :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeName arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeName' arg'1' arg'2' arg'3')

manager_GetNodeLocation :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeLocation arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeLocation' arg'1' arg'2' arg'3')

manager_GetNodeManufacturerId :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeManufacturerId arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeManufacturerId' arg'1' arg'2' arg'3')

manager_GetNodeProductType :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeProductType arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeProductType' arg'1' arg'2' arg'3')

manager_GetNodeProductId :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeProductId arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeProductId' arg'1' arg'2' arg'3')

manager_SetNodeManufacturerName :: (ManagerPtr arg'1, M2.StdStringValue arg'4) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> arg'4 -> HoppyP.IO ()
manager_SetNodeManufacturerName arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  (manager_SetNodeManufacturerName' arg'1' arg'2' arg'3' arg'4')

manager_SetNodeProductName :: (ManagerPtr arg'1, M2.StdStringValue arg'4) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> arg'4 -> HoppyP.IO ()
manager_SetNodeProductName arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  (manager_SetNodeProductName' arg'1' arg'2' arg'3' arg'4')

manager_SetNodeName :: (ManagerPtr arg'1, M2.StdStringValue arg'4) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> arg'4 -> HoppyP.IO ()
manager_SetNodeName arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  (manager_SetNodeName' arg'1' arg'2' arg'3' arg'4')

manager_SetNodeLocation :: (ManagerPtr arg'1, M2.StdStringValue arg'4) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> arg'4 -> HoppyP.IO ()
manager_SetNodeLocation arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  (manager_SetNodeLocation' arg'1' arg'2' arg'3' arg'4')

manager_SetNodeOn :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO ()
manager_SetNodeOn arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_SetNodeOn' arg'1' arg'2' arg'3')

manager_SetNodeOff :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO ()
manager_SetNodeOff arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_SetNodeOff' arg'1' arg'2' arg'3')

manager_SetNodeLevel :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
manager_SetNodeLevel arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  (manager_SetNodeLevel' arg'1' arg'2' arg'3' arg'4')

manager_IsNodeInfoReceived :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeInfoReceived arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeInfoReceived' arg'1' arg'2' arg'3')

manager_getNodeClassInformation :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_getNodeClassInformation arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_getNodeClassInformation' arg'1' arg'2' arg'3' arg'4')

manager_getNodeClassInformation_ :: (ManagerPtr arg'1, M2.StdStringPtr arg'5) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> arg'5 -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_getNodeClassInformation_ arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyFHR.withCppPtr (M2.toStdString arg'5) $ \arg'5' ->
  let arg'6' = arg'6 in
  HoppyP.fmap (/= 0)
  (manager_getNodeClassInformation_' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

manager_IsNodeAwake :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeAwake arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeAwake' arg'1' arg'2' arg'3')

manager_IsNodeFailed :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_IsNodeFailed arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_IsNodeFailed' arg'1' arg'2' arg'3')

manager_GetNodeQueryStage :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeQueryStage arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeQueryStage' arg'1' arg'2' arg'3')

manager_GetNodeDeviceType :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUShort
manager_GetNodeDeviceType arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeDeviceType' arg'1' arg'2' arg'3')

manager_GetNodeDeviceTypeString :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeDeviceTypeString arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeDeviceTypeString' arg'1' arg'2' arg'3')

manager_GetNodeRole :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNodeRole arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodeRole' arg'1' arg'2' arg'3')

manager_GetNodeRoleString :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodeRoleString arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodeRoleString' arg'1' arg'2' arg'3')

manager_GetNodePlusType :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNodePlusType arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNodePlusType' arg'1' arg'2' arg'3')

manager_GetNodePlusTypeString :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetNodePlusTypeString arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetNodePlusTypeString' arg'1' arg'2' arg'3')

manager_GetValueLabel :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.String
manager_GetValueLabel arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetValueLabel' arg'1' arg'2')

manager_SetValueLabel :: (ManagerPtr arg'1, ValueIDValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
manager_SetValueLabel arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (manager_SetValueLabel' arg'1' arg'2' arg'3')

manager_GetValueUnits :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.String
manager_GetValueUnits arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetValueUnits' arg'1' arg'2')

manager_SetValueUnits :: (ManagerPtr arg'1, ValueIDValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
manager_SetValueUnits arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (manager_SetValueUnits' arg'1' arg'2' arg'3')

manager_GetValueHelp :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.String
manager_GetValueHelp arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetValueHelp' arg'1' arg'2')

manager_SetValueHelp :: (ManagerPtr arg'1, ValueIDValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
manager_SetValueHelp arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (manager_SetValueHelp' arg'1' arg'2' arg'3')

manager_GetValueMin :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Int
manager_GetValueMin arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (manager_GetValueMin' arg'1' arg'2')

manager_GetValueMax :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Int
manager_GetValueMax arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (manager_GetValueMax' arg'1' arg'2')

manager_IsValueReadOnly :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_IsValueReadOnly arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_IsValueReadOnly' arg'1' arg'2')

manager_IsValueWriteOnly :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_IsValueWriteOnly arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_IsValueWriteOnly' arg'1' arg'2')

manager_IsValueSet :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_IsValueSet arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_IsValueSet' arg'1' arg'2')

manager_IsValuePolled :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_IsValuePolled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_IsValuePolled' arg'1' arg'2')

manager_GetValueAsBool :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFHR.CBool -> HoppyP.IO HoppyP.Bool
manager_GetValueAsBool arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_GetValueAsBool' arg'1' arg'2' arg'3')

manager_GetValueAsByte :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_GetValueAsByte arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_GetValueAsByte' arg'1' arg'2' arg'3')

manager_GetValueAsFloat :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CFloat -> HoppyP.IO HoppyP.Bool
manager_GetValueAsFloat arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_GetValueAsFloat' arg'1' arg'2' arg'3')

manager_GetValueAsInt :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyP.Bool
manager_GetValueAsInt arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_GetValueAsInt' arg'1' arg'2' arg'3')

manager_GetValueAsShort :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CShort -> HoppyP.IO HoppyP.Bool
manager_GetValueAsShort arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_GetValueAsShort' arg'1' arg'2' arg'3')

manager_GetValueAsString :: (ManagerPtr arg'1, ValueIDValue arg'2, M2.StdStringPtr arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO HoppyP.Bool
manager_GetValueAsString arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.withCppPtr (M2.toStdString arg'3) $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (manager_GetValueAsString' arg'1' arg'2' arg'3')

manager_GetValueAsRaw :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_GetValueAsRaw arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_GetValueAsRaw' arg'1' arg'2' arg'3' arg'4')

manager_GetValueListSelectionString :: (ManagerPtr arg'1, ValueIDValue arg'2, M2.StdStringPtr arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO HoppyP.Bool
manager_GetValueListSelectionString arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.withCppPtr (M2.toStdString arg'3) $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (manager_GetValueListSelectionString' arg'1' arg'2' arg'3')

manager_GetValueListSelection :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyP.Bool
manager_GetValueListSelection arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_GetValueListSelection' arg'1' arg'2' arg'3')

manager_GetValueListItems :: (ManagerPtr arg'1, ValueIDValue arg'2, StringVectorPtr arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO HoppyP.Bool
manager_GetValueListItems arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.withCppPtr (toStringVector arg'3) $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (manager_GetValueListItems' arg'1' arg'2' arg'3')

manager_GetValueListValues :: (ManagerPtr arg'1, ValueIDValue arg'2, IntVectorPtr arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO HoppyP.Bool
manager_GetValueListValues arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.withCppPtr (toIntVector arg'3) $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (manager_GetValueListValues' arg'1' arg'2' arg'3')

manager_GetValueFloatPrecision :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_GetValueFloatPrecision arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_GetValueFloatPrecision' arg'1' arg'2' arg'3')

manager_setBoolValue :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO HoppyP.Bool
manager_setBoolValue arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  HoppyP.fmap (/= 0)
  (manager_setBoolValue' arg'1' arg'2' arg'3')

manager_setByteValue :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_setByteValue arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_setByteValue' arg'1' arg'2' arg'3')

manager_setFloatValue :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.Float -> HoppyP.IO HoppyP.Bool
manager_setFloatValue arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap (/= 0)
  (manager_setFloatValue' arg'1' arg'2' arg'3')

manager_setIntValue :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO HoppyP.Bool
manager_setIntValue arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  HoppyP.fmap (/= 0)
  (manager_setIntValue' arg'1' arg'2' arg'3')

manager_setShortValue :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyFC.CShort -> HoppyP.IO HoppyP.Bool
manager_setShortValue arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_setShortValue' arg'1' arg'2' arg'3')

manager_setRawValue :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_setRawValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_setRawValue' arg'1' arg'2' arg'3' arg'4')

manager_SetStringValue :: (ManagerPtr arg'1, ValueIDValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO HoppyP.Bool
manager_SetStringValue arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (manager_SetStringValue' arg'1' arg'2' arg'3')

manager_SetValueListSelection :: (ManagerPtr arg'1, ValueIDValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO HoppyP.Bool
manager_SetValueListSelection arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (manager_SetValueListSelection' arg'1' arg'2' arg'3')

manager_RefreshValue :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_RefreshValue arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_RefreshValue' arg'1' arg'2')

manager_SetChangeVerified :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO ()
manager_SetChangeVerified arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  (manager_SetChangeVerified' arg'1' arg'2' arg'3')

manager_GetChangeVerified :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_GetChangeVerified arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_GetChangeVerified' arg'1' arg'2')

manager_PressButton :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_PressButton arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_PressButton' arg'1' arg'2')

manager_ReleaseButton :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
manager_ReleaseButton arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (manager_ReleaseButton' arg'1' arg'2')

manager_GetNumSwitchPoints :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CUChar
manager_GetNumSwitchPoints arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (manager_GetNumSwitchPoints' arg'1' arg'2')

manager_SetSwitchPoint :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CChar -> HoppyP.IO HoppyP.Bool
manager_SetSwitchPoint arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = arg'5 in
  HoppyP.fmap (/= 0)
  (manager_SetSwitchPoint' arg'1' arg'2' arg'3' arg'4' arg'5')

manager_RemoveSwitchPoint :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RemoveSwitchPoint arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_RemoveSwitchPoint' arg'1' arg'2' arg'3' arg'4')

manager_ClearSwitchPoints :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
manager_ClearSwitchPoints arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (manager_ClearSwitchPoints' arg'1' arg'2')

manager_GetSwitchPoint :: (ManagerPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyFC.CUChar -> HoppyF.Ptr HoppyFC.CUChar -> HoppyF.Ptr HoppyFC.CUChar -> HoppyF.Ptr HoppyDI.Int8 -> HoppyP.IO HoppyP.Bool
manager_GetSwitchPoint arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = arg'5 in
  let arg'6' = arg'6 in
  HoppyP.fmap (/= 0)
  (manager_GetSwitchPoint' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

manager_SwitchAllOn :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO ()
manager_SwitchAllOn arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_SwitchAllOn' arg'1' arg'2')

manager_SwitchAllOff :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO ()
manager_SwitchAllOff arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_SwitchAllOff' arg'1' arg'2')

manager_setConfigParam_ :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.Int -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_setConfigParam_ arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = HoppyFHR.coerceIntegral arg'5 in
  let arg'6' = arg'6 in
  HoppyP.fmap (/= 0)
  (manager_setConfigParam_' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

manager_setConfigParam :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.Int -> HoppyP.IO HoppyP.Bool
manager_setConfigParam arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = HoppyFHR.coerceIntegral arg'5 in
  HoppyP.fmap (/= 0)
  (manager_setConfigParam' arg'1' arg'2' arg'3' arg'4' arg'5')

manager_RequestConfigParam :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
manager_RequestConfigParam arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  (manager_RequestConfigParam' arg'1' arg'2' arg'3' arg'4')

manager_RequestAllConfigParams :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO ()
manager_RequestAllConfigParams arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_RequestAllConfigParams' arg'1' arg'2' arg'3')

manager_GetNumGroups :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetNumGroups arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_GetNumGroups' arg'1' arg'2' arg'3')

manager_getAssociations_ :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyP.IO HoppyFC.CUInt
manager_getAssociations_ arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = arg'5 in
  (manager_getAssociations_' arg'1' arg'2' arg'3' arg'4' arg'5')

manager_GetMaxAssociations :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyFC.CUChar
manager_GetMaxAssociations arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  (manager_GetMaxAssociations' arg'1' arg'2' arg'3' arg'4')

manager_GetGroupLabel :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetGroupLabel arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetGroupLabel' arg'1' arg'2' arg'3' arg'4')

manager_AddAssociation :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
manager_AddAssociation arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = arg'5 in
  let arg'6' = arg'6 in
  (manager_AddAssociation' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

manager_RemoveAssociation :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO ()
manager_RemoveAssociation arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = arg'5 in
  let arg'6' = arg'6 in
  (manager_RemoveAssociation' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

manager_AddWatcher :: (ManagerPtr arg'1) => arg'1 -> HoppyF.FunPtr (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyP.IO HoppyP.Bool
manager_AddWatcher arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_AddWatcher' arg'1' arg'2' arg'3')

manager_RemoveWatcher :: (ManagerPtr arg'1) => arg'1 -> HoppyF.FunPtr (HoppyF.Ptr NotificationConst -> HoppyF.Ptr () -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyP.IO HoppyP.Bool
manager_RemoveWatcher arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_RemoveWatcher' arg'1' arg'2' arg'3')

manager_ResetController :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO ()
manager_ResetController arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_ResetController' arg'1' arg'2')

manager_SoftReset :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO ()
manager_SoftReset arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_SoftReset' arg'1' arg'2')

manager_CancelControllerCommand :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_CancelControllerCommand arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_CancelControllerCommand' arg'1' arg'2')

manager_TestNetworkNode :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUInt -> HoppyP.IO ()
manager_TestNetworkNode arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  (manager_TestNetworkNode' arg'1' arg'2' arg'3' arg'4')

manager_TestNetwork :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUInt -> HoppyP.IO ()
manager_TestNetwork arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  (manager_TestNetwork' arg'1' arg'2' arg'3')

manager_HealNetworkNode :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.Bool -> HoppyP.IO ()
manager_HealNetworkNode arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = if arg'4 then 1 else 0 in
  (manager_HealNetworkNode' arg'1' arg'2' arg'3' arg'4')

manager_HealNetwork :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.Bool -> HoppyP.IO ()
manager_HealNetwork arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = if arg'3 then 1 else 0 in
  (manager_HealNetwork' arg'1' arg'2' arg'3')

manager_AddNode :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.Bool -> HoppyP.IO HoppyP.Bool
manager_AddNode arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = if arg'3 then 1 else 0 in
  HoppyP.fmap (/= 0)
  (manager_AddNode' arg'1' arg'2' arg'3')

manager_RemoveNode :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_RemoveNode arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_RemoveNode' arg'1' arg'2')

manager_RemoveFailedNode :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RemoveFailedNode arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_RemoveFailedNode' arg'1' arg'2' arg'3')

manager_HasNodeFailed :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_HasNodeFailed arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_HasNodeFailed' arg'1' arg'2' arg'3')

manager_RequestNodeNeighborUpdate :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RequestNodeNeighborUpdate arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_RequestNodeNeighborUpdate' arg'1' arg'2' arg'3')

manager_AssignReturnRoute :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_AssignReturnRoute arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_AssignReturnRoute' arg'1' arg'2' arg'3')

manager_DeleteAllReturnRoutes :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_DeleteAllReturnRoutes arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_DeleteAllReturnRoutes' arg'1' arg'2' arg'3')

manager_SendNodeInformation :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_SendNodeInformation arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_SendNodeInformation' arg'1' arg'2' arg'3')

manager_CreateNewPrimary :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_CreateNewPrimary arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_CreateNewPrimary' arg'1' arg'2')

manager_ReceiveConfiguration :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_ReceiveConfiguration arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_ReceiveConfiguration' arg'1' arg'2')

manager_ReplaceFailedNode :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_ReplaceFailedNode arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_ReplaceFailedNode' arg'1' arg'2' arg'3')

manager_TransferPrimaryRole :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO HoppyP.Bool
manager_TransferPrimaryRole arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_TransferPrimaryRole' arg'1' arg'2')

manager_RequestNetworkUpdate :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RequestNetworkUpdate arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_RequestNetworkUpdate' arg'1' arg'2' arg'3')

manager_ReplicationSend :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_ReplicationSend arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (manager_ReplicationSend' arg'1' arg'2' arg'3')

manager_CreateButton :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_CreateButton arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_CreateButton' arg'1' arg'2' arg'3' arg'4')

manager_DeleteButton :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_DeleteButton arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_DeleteButton' arg'1' arg'2' arg'3' arg'4')

manager_GetNumScenes :: (ManagerPtr arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
manager_GetNumScenes arg'1 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  (manager_GetNumScenes' arg'1')

manager_GetAllScenes :: (ManagerPtr arg'1) => arg'1 -> HoppyF.Ptr (HoppyF.Ptr HoppyFC.CUChar) -> HoppyP.IO HoppyFC.CUChar
manager_GetAllScenes arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_GetAllScenes' arg'1' arg'2')

manager_RemoveAllScenes :: (ManagerPtr arg'1) => arg'1 -> HoppyDW.Word32 -> HoppyP.IO ()
manager_RemoveAllScenes arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (manager_RemoveAllScenes' arg'1' arg'2')

manager_CreateScene :: (ManagerPtr arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
manager_CreateScene arg'1 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  (manager_CreateScene' arg'1')

manager_RemoveScene :: (ManagerPtr arg'1) => arg'1 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_RemoveScene arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_RemoveScene' arg'1' arg'2')

manager_addSceneBoolValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Bool -> HoppyP.IO HoppyP.Bool
manager_addSceneBoolValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = if arg'4 then 1 else 0 in
  HoppyP.fmap (/= 0)
  (manager_addSceneBoolValue' arg'1' arg'2' arg'3' arg'4')

manager_addSceneByteValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_addSceneByteValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_addSceneByteValue' arg'1' arg'2' arg'3' arg'4')

manager_addSceneFloatValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Float -> HoppyP.IO HoppyP.Bool
manager_addSceneFloatValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyP.realToFrac arg'4 in
  HoppyP.fmap (/= 0)
  (manager_addSceneFloatValue' arg'1' arg'2' arg'3' arg'4')

manager_addSceneIntValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Int -> HoppyP.IO HoppyP.Bool
manager_addSceneIntValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  HoppyP.fmap (/= 0)
  (manager_addSceneIntValue' arg'1' arg'2' arg'3' arg'4')

manager_addSceneShortValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyFC.CShort -> HoppyP.IO HoppyP.Bool
manager_addSceneShortValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_addSceneShortValue' arg'1' arg'2' arg'3' arg'4')

manager_addSceneStringValue :: (ManagerPtr arg'1, ValueIDValue arg'3, M2.StdStringValue arg'4) => arg'1 -> HoppyFC.CUChar -> arg'3 -> arg'4 -> HoppyP.IO HoppyP.Bool
manager_addSceneStringValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  HoppyP.fmap (/= 0)
  (manager_addSceneStringValue' arg'1' arg'2' arg'3' arg'4')

manager_addSceneValueListSelectionString :: (ManagerPtr arg'1, ValueIDValue arg'3, M2.StdStringValue arg'4) => arg'1 -> HoppyFC.CUChar -> arg'3 -> arg'4 -> HoppyP.IO HoppyP.Bool
manager_addSceneValueListSelectionString arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  HoppyP.fmap (/= 0)
  (manager_addSceneValueListSelectionString' arg'1' arg'2' arg'3' arg'4')

manager_addSceneValueListSelectionBool :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Int -> HoppyP.IO HoppyP.Bool
manager_addSceneValueListSelectionBool arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  HoppyP.fmap (/= 0)
  (manager_addSceneValueListSelectionBool' arg'1' arg'2' arg'3' arg'4')

manager_RemoveSceneValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.IO HoppyP.Bool
manager_RemoveSceneValue arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (manager_RemoveSceneValue' arg'1' arg'2' arg'3')

manager_SceneGetValues :: (ManagerPtr arg'1, ValueIDVectorPtr arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.IO HoppyP.Int
manager_SceneGetValues arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.withCppPtr (toValueIDVector arg'3) $ \arg'3' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (manager_SceneGetValues' arg'1' arg'2' arg'3')

manager_SceneGetValueAsBool :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyF.Ptr HoppyFHR.CBool -> HoppyP.IO HoppyP.Bool
manager_SceneGetValueAsBool arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_SceneGetValueAsBool' arg'1' arg'2' arg'3' arg'4')

manager_SceneGetValueAsByte :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyF.Ptr HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_SceneGetValueAsByte arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_SceneGetValueAsByte' arg'1' arg'2' arg'3' arg'4')

manager_SceneGetValueAsFloat :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyF.Ptr HoppyFC.CFloat -> HoppyP.IO HoppyP.Bool
manager_SceneGetValueAsFloat arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_SceneGetValueAsFloat' arg'1' arg'2' arg'3' arg'4')

manager_SceneGetValueAsInt :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyP.Bool
manager_SceneGetValueAsInt arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_SceneGetValueAsInt' arg'1' arg'2' arg'3' arg'4')

manager_SceneGetValueAsShort :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyF.Ptr HoppyFC.CShort -> HoppyP.IO HoppyP.Bool
manager_SceneGetValueAsShort arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_SceneGetValueAsShort' arg'1' arg'2' arg'3' arg'4')

manager_SceneGetValueAsString :: (ManagerPtr arg'1, ValueIDValue arg'3, M2.StdStringPtr arg'4) => arg'1 -> HoppyFC.CUChar -> arg'3 -> arg'4 -> HoppyP.IO HoppyP.Bool
manager_SceneGetValueAsString arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyFHR.withCppPtr (M2.toStdString arg'4) $ \arg'4' ->
  HoppyP.fmap (/= 0)
  (manager_SceneGetValueAsString' arg'1' arg'2' arg'3' arg'4')

manager_sceneGetValueListSelectionAsString :: (ManagerPtr arg'1, ValueIDValue arg'3, M2.StdStringPtr arg'4) => arg'1 -> HoppyFC.CUChar -> arg'3 -> arg'4 -> HoppyP.IO HoppyP.Bool
manager_sceneGetValueListSelectionAsString arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyFHR.withCppPtr (M2.toStdString arg'4) $ \arg'4' ->
  HoppyP.fmap (/= 0)
  (manager_sceneGetValueListSelectionAsString' arg'1' arg'2' arg'3' arg'4')

manager_sceneGetValueListSelectionAsInt :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyP.Bool
manager_sceneGetValueListSelectionAsInt arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_sceneGetValueListSelectionAsInt' arg'1' arg'2' arg'3' arg'4')

manager_setSceneBoolValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Bool -> HoppyP.IO HoppyP.Bool
manager_setSceneBoolValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = if arg'4 then 1 else 0 in
  HoppyP.fmap (/= 0)
  (manager_setSceneBoolValue' arg'1' arg'2' arg'3' arg'4')

manager_setSceneByteValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_setSceneByteValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_setSceneByteValue' arg'1' arg'2' arg'3' arg'4')

manager_setSceneFloatValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Float -> HoppyP.IO HoppyP.Bool
manager_setSceneFloatValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyP.realToFrac arg'4 in
  HoppyP.fmap (/= 0)
  (manager_setSceneFloatValue' arg'1' arg'2' arg'3' arg'4')

manager_setSceneIntValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Int -> HoppyP.IO HoppyP.Bool
manager_setSceneIntValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  HoppyP.fmap (/= 0)
  (manager_setSceneIntValue' arg'1' arg'2' arg'3' arg'4')

manager_setSceneShortValue :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyFC.CShort -> HoppyP.IO HoppyP.Bool
manager_setSceneShortValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = arg'4 in
  HoppyP.fmap (/= 0)
  (manager_setSceneShortValue' arg'1' arg'2' arg'3' arg'4')

manager_setSceneStringValue :: (ManagerPtr arg'1, ValueIDValue arg'3, M2.StdStringValue arg'4) => arg'1 -> HoppyFC.CUChar -> arg'3 -> arg'4 -> HoppyP.IO HoppyP.Bool
manager_setSceneStringValue arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  HoppyP.fmap (/= 0)
  (manager_setSceneStringValue' arg'1' arg'2' arg'3' arg'4')

manager_setSceneValueListSelectionAsString :: (ManagerPtr arg'1, ValueIDValue arg'3, M2.StdStringValue arg'4) => arg'1 -> HoppyFC.CUChar -> arg'3 -> arg'4 -> HoppyP.IO HoppyP.Bool
manager_setSceneValueListSelectionAsString arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  M2.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  HoppyP.fmap (/= 0)
  (manager_setSceneValueListSelectionAsString' arg'1' arg'2' arg'3' arg'4')

manager_setSceneValueListSelectionAsInt :: (ManagerPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.Int -> HoppyP.IO HoppyP.Bool
manager_setSceneValueListSelectionAsInt arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  HoppyP.fmap (/= 0)
  (manager_setSceneValueListSelectionAsInt' arg'1' arg'2' arg'3' arg'4')

manager_GetSceneLabel :: (ManagerPtr arg'1) => arg'1 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.String
manager_GetSceneLabel arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_GetSceneLabel' arg'1' arg'2')

manager_SetSceneLabel :: (ManagerPtr arg'1, M2.StdStringValue arg'3) => arg'1 -> HoppyFC.CUChar -> arg'3 -> HoppyP.IO ()
manager_SetSceneLabel arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (manager_SetSceneLabel' arg'1' arg'2' arg'3')

manager_SceneExists :: (ManagerPtr arg'1) => arg'1 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_SceneExists arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_SceneExists' arg'1' arg'2')

manager_ActivateScene :: (ManagerPtr arg'1) => arg'1 -> HoppyFC.CUChar -> HoppyP.IO HoppyP.Bool
manager_ActivateScene arg'1 arg'2 =
  HoppyFHR.withCppPtr (toManager arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (manager_ActivateScene' arg'1' arg'2')

manager_Create ::  HoppyP.IO Manager
manager_Create =
  HoppyP.fmap Manager
  (manager_Create')

manager_Get ::  HoppyP.IO Manager
manager_Get =
  HoppyP.fmap Manager
  (manager_Get')

manager_Destroy ::  HoppyP.IO ()
manager_Destroy =
  (manager_Destroy')

manager_getVersionAsString ::  HoppyP.IO HoppyP.String
manager_getVersionAsString =
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_getVersionAsString')

manager_getVersionLongAsString ::  HoppyP.IO HoppyP.String
manager_getVersionLongAsString =
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (manager_getVersionLongAsString')

data ManagerConst =
    ManagerConst (HoppyF.Ptr ManagerConst)
  | ManagerConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ManagerConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq ManagerConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ManagerConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castManagerToConst :: Manager -> ManagerConst
castManagerToConst (Manager ptr') = ManagerConst $ HoppyF.castPtr ptr'
castManagerToConst (ManagerGc fptr' ptr') = ManagerConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ManagerConst where
  nullptr = ManagerConst HoppyF.nullPtr
  
  withCppPtr (ManagerConst ptr') f' = f' ptr'
  withCppPtr (ManagerConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ManagerConst ptr') = ptr'
  toPtr (ManagerConstGc _ ptr') = ptr'
  
  touchCppPtr (ManagerConst _) = HoppyP.return ()
  touchCppPtr (ManagerConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance ManagerConstPtr ManagerConst where
  toManagerConst = HoppyP.id

data Manager =
    Manager (HoppyF.Ptr Manager)
  | ManagerGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Manager)
  deriving (HoppyP.Show)

instance HoppyP.Eq Manager where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Manager where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castManagerToNonconst :: ManagerConst -> Manager
castManagerToNonconst (ManagerConst ptr') = Manager $ HoppyF.castPtr ptr'
castManagerToNonconst (ManagerConstGc fptr' ptr') = ManagerGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Manager where
  nullptr = Manager HoppyF.nullPtr
  
  withCppPtr (Manager ptr') f' = f' ptr'
  withCppPtr (ManagerGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Manager ptr') = ptr'
  toPtr (ManagerGc _ ptr') = ptr'
  
  touchCppPtr (Manager _) = HoppyP.return ()
  touchCppPtr (ManagerGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance ManagerConstPtr Manager where
  toManagerConst (Manager ptr') = ManagerConst $ (HoppyF.castPtr :: HoppyF.Ptr Manager -> HoppyF.Ptr ManagerConst) ptr'
  toManagerConst (ManagerGc fptr' ptr') = ManagerConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Manager -> HoppyF.Ptr ManagerConst) ptr'

instance ManagerPtr Manager where
  toManager = HoppyP.id

class ManagerSuper a where
  downToManager :: a -> Manager


class ManagerSuperConst a where
  downToManagerConst :: a -> ManagerConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Manager)) Manager where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Manager)) Manager where
  decode = HoppyP.fmap Manager . HoppyF.peek

class NotificationValue a where
  withNotificationPtr :: a -> (NotificationConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} NotificationConstPtr a => NotificationValue a where
#else
instance NotificationConstPtr a => NotificationValue a where
#endif
  withNotificationPtr = HoppyP.flip ($) . toNotificationConst

class (HoppyFHR.CppPtr this) => NotificationConstPtr this where
  toNotificationConst :: this -> NotificationConst

notification_GetType :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO NotificationType
notification_GetType arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (notification_GetType' arg'1')

notification_GetHomeId :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word32
notification_GetHomeId arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (notification_GetHomeId' arg'1')

notification_GetNodeId :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
notification_GetNodeId arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (notification_GetNodeId' arg'1')

notification_GetValueID :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO ValueIDConst
notification_GetValueID arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDConst
  (notification_GetValueID' arg'1')

notification_GetGroupIdx :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
notification_GetGroupIdx arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (notification_GetGroupIdx' arg'1')

notification_GetEvent :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
notification_GetEvent arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (notification_GetEvent' arg'1')

notification_GetButtonId :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
notification_GetButtonId arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (notification_GetButtonId' arg'1')

notification_GetSceneId :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
notification_GetSceneId arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (notification_GetSceneId' arg'1')

notification_GetByte :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
notification_GetByte arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (notification_GetByte' arg'1')

notification_GetAsString :: (NotificationValue arg'1) => arg'1 -> HoppyP.IO HoppyP.String
notification_GetAsString arg'1 =
  withNotificationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.StdStringConst) =<<
  (notification_GetAsString' arg'1')

class (NotificationConstPtr this) => NotificationPtr this where
  toNotification :: this -> Notification

data NotificationConst =
    NotificationConst (HoppyF.Ptr NotificationConst)
  | NotificationConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr NotificationConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq NotificationConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord NotificationConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castNotificationToConst :: Notification -> NotificationConst
castNotificationToConst (Notification ptr') = NotificationConst $ HoppyF.castPtr ptr'
castNotificationToConst (NotificationGc fptr' ptr') = NotificationConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr NotificationConst where
  nullptr = NotificationConst HoppyF.nullPtr
  
  withCppPtr (NotificationConst ptr') f' = f' ptr'
  withCppPtr (NotificationConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (NotificationConst ptr') = ptr'
  toPtr (NotificationConstGc _ ptr') = ptr'
  
  touchCppPtr (NotificationConst _) = HoppyP.return ()
  touchCppPtr (NotificationConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance NotificationConstPtr NotificationConst where
  toNotificationConst = HoppyP.id

data Notification =
    Notification (HoppyF.Ptr Notification)
  | NotificationGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Notification)
  deriving (HoppyP.Show)

instance HoppyP.Eq Notification where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Notification where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castNotificationToNonconst :: NotificationConst -> Notification
castNotificationToNonconst (NotificationConst ptr') = Notification $ HoppyF.castPtr ptr'
castNotificationToNonconst (NotificationConstGc fptr' ptr') = NotificationGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Notification where
  nullptr = Notification HoppyF.nullPtr
  
  withCppPtr (Notification ptr') f' = f' ptr'
  withCppPtr (NotificationGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Notification ptr') = ptr'
  toPtr (NotificationGc _ ptr') = ptr'
  
  touchCppPtr (Notification _) = HoppyP.return ()
  touchCppPtr (NotificationGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance NotificationConstPtr Notification where
  toNotificationConst (Notification ptr') = NotificationConst $ (HoppyF.castPtr :: HoppyF.Ptr Notification -> HoppyF.Ptr NotificationConst) ptr'
  toNotificationConst (NotificationGc fptr' ptr') = NotificationConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Notification -> HoppyF.Ptr NotificationConst) ptr'

instance NotificationPtr Notification where
  toNotification = HoppyP.id

class NotificationSuper a where
  downToNotification :: a -> Notification


class NotificationSuperConst a where
  downToNotificationConst :: a -> NotificationConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Notification)) Notification where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Notification)) Notification where
  decode = HoppyP.fmap Notification . HoppyF.peek

data NotificationType =
  NotificationType_ValueAdded
  | NotificationType_ValueRemoved
  | NotificationType_ValueChanged
  | NotificationType_ValueRefreshed
  | NotificationType_Group
  | NotificationType_NewNode
  | NotificationType_NodeAdded
  | NotificationType_NodeRemoved
  | NotificationType_NodeProtocolInfo
  | NotificationType_NodeNaming
  | NotificationType_NodeEvent
  | NotificationType_PollingDisabled
  | NotificationType_PollingEnabled
  | NotificationType_SceneEvent
  | NotificationType_CreateButton
  | NotificationType_DeleteButton
  | NotificationType_ButtonOn
  | NotificationType_ButtonOff
  | NotificationType_DriverReady
  | NotificationType_DriverFailed
  | NotificationType_DriverReset
  | NotificationType_EssentialNodeQueriesComplete
  | NotificationType_NodeQueriesComplete
  | NotificationType_AwakeNodesQueried
  | NotificationType_AllNodesQueriedSomeDead
  | NotificationType_AllNodesQueried
  | NotificationType_Notification
  | NotificationType_DriverRemoved
  | NotificationType_ControllerCommand
  | NotificationType_NodeReset
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum NotificationType where
  fromEnum NotificationType_ValueAdded = 0
  fromEnum NotificationType_ValueRemoved = 1
  fromEnum NotificationType_ValueChanged = 2
  fromEnum NotificationType_ValueRefreshed = 3
  fromEnum NotificationType_Group = 4
  fromEnum NotificationType_NewNode = 5
  fromEnum NotificationType_NodeAdded = 6
  fromEnum NotificationType_NodeRemoved = 7
  fromEnum NotificationType_NodeProtocolInfo = 8
  fromEnum NotificationType_NodeNaming = 9
  fromEnum NotificationType_NodeEvent = 10
  fromEnum NotificationType_PollingDisabled = 11
  fromEnum NotificationType_PollingEnabled = 12
  fromEnum NotificationType_SceneEvent = 13
  fromEnum NotificationType_CreateButton = 14
  fromEnum NotificationType_DeleteButton = 15
  fromEnum NotificationType_ButtonOn = 16
  fromEnum NotificationType_ButtonOff = 17
  fromEnum NotificationType_DriverReady = 18
  fromEnum NotificationType_DriverFailed = 19
  fromEnum NotificationType_DriverReset = 20
  fromEnum NotificationType_EssentialNodeQueriesComplete = 21
  fromEnum NotificationType_NodeQueriesComplete = 22
  fromEnum NotificationType_AwakeNodesQueried = 23
  fromEnum NotificationType_AllNodesQueriedSomeDead = 24
  fromEnum NotificationType_AllNodesQueried = 25
  fromEnum NotificationType_Notification = 26
  fromEnum NotificationType_DriverRemoved = 27
  fromEnum NotificationType_ControllerCommand = 28
  fromEnum NotificationType_NodeReset = 29
  
  toEnum (0) = NotificationType_ValueAdded
  toEnum (1) = NotificationType_ValueRemoved
  toEnum (2) = NotificationType_ValueChanged
  toEnum (3) = NotificationType_ValueRefreshed
  toEnum (4) = NotificationType_Group
  toEnum (5) = NotificationType_NewNode
  toEnum (6) = NotificationType_NodeAdded
  toEnum (7) = NotificationType_NodeRemoved
  toEnum (8) = NotificationType_NodeProtocolInfo
  toEnum (9) = NotificationType_NodeNaming
  toEnum (10) = NotificationType_NodeEvent
  toEnum (11) = NotificationType_PollingDisabled
  toEnum (12) = NotificationType_PollingEnabled
  toEnum (13) = NotificationType_SceneEvent
  toEnum (14) = NotificationType_CreateButton
  toEnum (15) = NotificationType_DeleteButton
  toEnum (16) = NotificationType_ButtonOn
  toEnum (17) = NotificationType_ButtonOff
  toEnum (18) = NotificationType_DriverReady
  toEnum (19) = NotificationType_DriverFailed
  toEnum (20) = NotificationType_DriverReset
  toEnum (21) = NotificationType_EssentialNodeQueriesComplete
  toEnum (22) = NotificationType_NodeQueriesComplete
  toEnum (23) = NotificationType_AwakeNodesQueried
  toEnum (24) = NotificationType_AllNodesQueriedSomeDead
  toEnum (25) = NotificationType_AllNodesQueried
  toEnum (26) = NotificationType_Notification
  toEnum (27) = NotificationType_DriverRemoved
  toEnum (28) = NotificationType_ControllerCommand
  toEnum (29) = NotificationType_NodeReset
  toEnum n' = HoppyP.error $ "Unknown NotificationType numeric value: " ++ HoppyP.show n'

data OptionType =
  OptionType_Invalid
  | OptionType_Bool
  | OptionType_Int
  | OptionType_String
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum OptionType where
  fromEnum OptionType_Invalid = 0
  fromEnum OptionType_Bool = 1
  fromEnum OptionType_Int = 2
  fromEnum OptionType_String = 3
  
  toEnum (0) = OptionType_Invalid
  toEnum (1) = OptionType_Bool
  toEnum (2) = OptionType_Int
  toEnum (3) = OptionType_String
  toEnum n' = HoppyP.error $ "Unknown OptionType numeric value: " ++ HoppyP.show n'

class OptionsValue a where
  withOptionsPtr :: a -> (OptionsConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} OptionsConstPtr a => OptionsValue a where
#else
instance OptionsConstPtr a => OptionsValue a where
#endif
  withOptionsPtr = HoppyP.flip ($) . toOptionsConst

class (HoppyFHR.CppPtr this) => OptionsConstPtr this where
  toOptionsConst :: this -> OptionsConst

options_AreLocked :: (OptionsValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
options_AreLocked arg'1 =
  withOptionsPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (options_AreLocked' arg'1')

class (OptionsConstPtr this) => OptionsPtr this where
  toOptions :: this -> Options

options_Lock :: (OptionsPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
options_Lock arg'1 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (options_Lock' arg'1')

options_AddOptionBool :: (OptionsPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO HoppyP.Bool
options_AddOptionBool arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  HoppyP.fmap (/= 0)
  (options_AddOptionBool' arg'1' arg'2' arg'3')

options_AddOptionInt :: (OptionsPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO HoppyP.Bool
options_AddOptionInt arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  HoppyP.fmap (/= 0)
  (options_AddOptionInt' arg'1' arg'2' arg'3')

options_AddOptionString :: (OptionsPtr arg'1, M2.StdStringValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.Bool -> HoppyP.IO HoppyP.Bool
options_AddOptionString arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = if arg'4 then 1 else 0 in
  HoppyP.fmap (/= 0)
  (options_AddOptionString' arg'1' arg'2' arg'3' arg'4')

options_GetOptionAsBool :: (OptionsPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFHR.CBool -> HoppyP.IO HoppyP.Bool
options_GetOptionAsBool arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (options_GetOptionAsBool' arg'1' arg'2' arg'3')

options_GetOptionAsInt :: (OptionsPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr HoppyFC.CInt -> HoppyP.IO HoppyP.Bool
options_GetOptionAsInt arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (options_GetOptionAsInt' arg'1' arg'2' arg'3')

options_GetOptionAsString :: (OptionsPtr arg'1, M2.StdStringValue arg'2, M2.StdStringPtr arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO HoppyP.Bool
options_GetOptionAsString arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.withCppPtr (M2.toStdString arg'3) $ \arg'3' ->
  HoppyP.fmap (/= 0)
  (options_GetOptionAsString' arg'1' arg'2' arg'3')

options_GetOptionType :: (OptionsPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO OptionType
options_GetOptionType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toOptions arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (options_GetOptionType' arg'1' arg'2')

options_Create :: (M2.StdStringValue arg'1, M2.StdStringValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO Options
options_Create arg'1 arg'2 arg'3 =
  M2.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyP.fmap Options
  (options_Create' arg'1' arg'2' arg'3')

options_Destroy ::  HoppyP.IO HoppyP.Bool
options_Destroy =
  HoppyP.fmap (/= 0)
  (options_Destroy')

options_Get ::  HoppyP.IO Options
options_Get =
  HoppyP.fmap Options
  (options_Get')

data OptionsConst =
    OptionsConst (HoppyF.Ptr OptionsConst)
  | OptionsConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr OptionsConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq OptionsConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord OptionsConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castOptionsToConst :: Options -> OptionsConst
castOptionsToConst (Options ptr') = OptionsConst $ HoppyF.castPtr ptr'
castOptionsToConst (OptionsGc fptr' ptr') = OptionsConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr OptionsConst where
  nullptr = OptionsConst HoppyF.nullPtr
  
  withCppPtr (OptionsConst ptr') f' = f' ptr'
  withCppPtr (OptionsConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (OptionsConst ptr') = ptr'
  toPtr (OptionsConstGc _ ptr') = ptr'
  
  touchCppPtr (OptionsConst _) = HoppyP.return ()
  touchCppPtr (OptionsConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance OptionsConstPtr OptionsConst where
  toOptionsConst = HoppyP.id

data Options =
    Options (HoppyF.Ptr Options)
  | OptionsGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Options)
  deriving (HoppyP.Show)

instance HoppyP.Eq Options where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Options where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castOptionsToNonconst :: OptionsConst -> Options
castOptionsToNonconst (OptionsConst ptr') = Options $ HoppyF.castPtr ptr'
castOptionsToNonconst (OptionsConstGc fptr' ptr') = OptionsGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Options where
  nullptr = Options HoppyF.nullPtr
  
  withCppPtr (Options ptr') f' = f' ptr'
  withCppPtr (OptionsGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Options ptr') = ptr'
  toPtr (OptionsGc _ ptr') = ptr'
  
  touchCppPtr (Options _) = HoppyP.return ()
  touchCppPtr (OptionsGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance OptionsConstPtr Options where
  toOptionsConst (Options ptr') = OptionsConst $ (HoppyF.castPtr :: HoppyF.Ptr Options -> HoppyF.Ptr OptionsConst) ptr'
  toOptionsConst (OptionsGc fptr' ptr') = OptionsConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Options -> HoppyF.Ptr OptionsConst) ptr'

instance OptionsPtr Options where
  toOptions = HoppyP.id

class OptionsSuper a where
  downToOptions :: a -> Options


class OptionsSuperConst a where
  downToOptionsConst :: a -> OptionsConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Options)) Options where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Options)) Options where
  decode = HoppyP.fmap Options . HoppyF.peek

class StringVectorValue a where
  withStringVectorPtr :: a -> (StringVectorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} StringVectorConstPtr a => StringVectorValue a where
#else
instance StringVectorConstPtr a => StringVectorValue a where
#endif
  withStringVectorPtr = HoppyP.flip ($) . toStringVectorConst

class (HoppyFHR.CppPtr this) => StringVectorConstPtr this where
  toStringVectorConst :: this -> StringVectorConst

stringVector_atConst :: (StringVectorValue arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO M2.StdStringConst
stringVector_atConst arg'1 arg'2 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap M2.StdStringConst
  (stringVector_atConst' arg'1' arg'2')

stringVector_backConst :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO M2.StdStringConst
stringVector_backConst arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.StdStringConst
  (stringVector_backConst' arg'1')

stringVector_beginConst :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO StringVectorConstIterator
stringVector_beginConst arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorConstIterator
  (stringVector_beginConst' arg'1')

stringVector_capacity :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
stringVector_capacity arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (stringVector_capacity' arg'1')

stringVector_empty :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
stringVector_empty arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (stringVector_empty' arg'1')

stringVector_endConst :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO StringVectorConstIterator
stringVector_endConst arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorConstIterator
  (stringVector_endConst' arg'1')

stringVector_frontConst :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO M2.StdStringConst
stringVector_frontConst arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.StdStringConst
  (stringVector_frontConst' arg'1')

stringVector_maxSize :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
stringVector_maxSize arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (stringVector_maxSize' arg'1')

stringVector_size :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
stringVector_size arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (stringVector_size' arg'1')

class (StringVectorConstPtr this) => StringVectorPtr this where
  toStringVector :: this -> StringVector

stringVector_at :: (StringVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO M2.StdString
stringVector_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap M2.StdString
  (stringVector_at' arg'1' arg'2')

stringVector_back :: (StringVectorPtr arg'1) => arg'1 -> HoppyP.IO M2.StdString
stringVector_back arg'1 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  HoppyP.fmap M2.StdString
  (stringVector_back' arg'1')

stringVector_begin :: (StringVectorPtr arg'1) => arg'1 -> HoppyP.IO StringVectorIterator
stringVector_begin arg'1 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorIterator
  (stringVector_begin' arg'1')

stringVector_clear :: (StringVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
stringVector_clear arg'1 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  (stringVector_clear' arg'1')

stringVector_end :: (StringVectorPtr arg'1) => arg'1 -> HoppyP.IO StringVectorIterator
stringVector_end arg'1 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorIterator
  (stringVector_end' arg'1')

stringVector_erase :: (StringVectorPtr arg'1, StringVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
stringVector_erase arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  withStringVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (stringVector_erase' arg'1' arg'2')

stringVector_eraseRange :: (StringVectorPtr arg'1, StringVectorIteratorValue arg'2, StringVectorIteratorValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
stringVector_eraseRange arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  withStringVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  withStringVectorIteratorPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (stringVector_eraseRange' arg'1' arg'2' arg'3')

stringVector_front :: (StringVectorPtr arg'1) => arg'1 -> HoppyP.IO M2.StdString
stringVector_front arg'1 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  HoppyP.fmap M2.StdString
  (stringVector_front' arg'1')

stringVector_insert :: (StringVectorPtr arg'1, StringVectorIteratorValue arg'2, M2.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO StringVectorIterator
stringVector_insert arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  withStringVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorIterator
  (stringVector_insert' arg'1' arg'2' arg'3')

stringVector_popBack :: (StringVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
stringVector_popBack arg'1 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  (stringVector_popBack' arg'1')

stringVector_pushBack :: (StringVectorPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
stringVector_pushBack arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (stringVector_pushBack' arg'1' arg'2')

stringVector_reserve :: (StringVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ()
stringVector_reserve arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (stringVector_reserve' arg'1' arg'2')

stringVector_resize :: (StringVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ()
stringVector_resize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (stringVector_resize' arg'1' arg'2')

stringVector_resizeWith :: (StringVectorPtr arg'1, M2.StdStringValue arg'3) => arg'1 -> HoppyFC.CSize -> arg'3 -> HoppyP.IO ()
stringVector_resizeWith arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  M2.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (stringVector_resizeWith' arg'1' arg'2' arg'3')

stringVector_shrinkToFit :: (StringVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
stringVector_shrinkToFit arg'1 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  (stringVector_shrinkToFit' arg'1')

stringVector_swap :: (StringVectorPtr arg'1, StringVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
stringVector_swap arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toStringVector arg'2) $ \arg'2' ->
  (stringVector_swap' arg'1' arg'2')

stringVector_ASSIGN :: (StringVectorPtr arg'1, StringVectorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO StringVector
stringVector_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVector arg'1) $ \arg'1' ->
  withStringVectorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap StringVector
  (stringVector_ASSIGN' arg'1' arg'2')

data StringVectorConst =
    StringVectorConst (HoppyF.Ptr StringVectorConst)
  | StringVectorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StringVectorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq StringVectorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StringVectorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStringVectorToConst :: StringVector -> StringVectorConst
castStringVectorToConst (StringVector ptr') = StringVectorConst $ HoppyF.castPtr ptr'
castStringVectorToConst (StringVectorGc fptr' ptr') = StringVectorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StringVectorConst where
  nullptr = StringVectorConst HoppyF.nullPtr
  
  withCppPtr (StringVectorConst ptr') f' = f' ptr'
  withCppPtr (StringVectorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StringVectorConst ptr') = ptr'
  toPtr (StringVectorConstGc _ ptr') = ptr'
  
  touchCppPtr (StringVectorConst _) = HoppyP.return ()
  touchCppPtr (StringVectorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StringVectorConst where
  delete (StringVectorConst ptr') = delete'StringVector ptr'
  delete (StringVectorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StringVectorConst", " object."]
  
  toGc this'@(StringVectorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StringVectorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StringVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StringVectorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable StringVectorConst StringVector where copy = stringVector_newCopy

instance StringVectorConstPtr StringVectorConst where
  toStringVectorConst = HoppyP.id

data StringVector =
    StringVector (HoppyF.Ptr StringVector)
  | StringVectorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StringVector)
  deriving (HoppyP.Show)

instance HoppyP.Eq StringVector where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StringVector where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStringVectorToNonconst :: StringVectorConst -> StringVector
castStringVectorToNonconst (StringVectorConst ptr') = StringVector $ HoppyF.castPtr ptr'
castStringVectorToNonconst (StringVectorConstGc fptr' ptr') = StringVectorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StringVector where
  nullptr = StringVector HoppyF.nullPtr
  
  withCppPtr (StringVector ptr') f' = f' ptr'
  withCppPtr (StringVectorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StringVector ptr') = ptr'
  toPtr (StringVectorGc _ ptr') = ptr'
  
  touchCppPtr (StringVector _) = HoppyP.return ()
  touchCppPtr (StringVectorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StringVector where
  delete (StringVector ptr') = delete'StringVector $ (HoppyF.castPtr ptr' :: HoppyF.Ptr StringVectorConst)
  delete (StringVectorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StringVector", " object."]
  
  toGc this'@(StringVector ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StringVectorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StringVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StringVectorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable StringVector StringVector where copy = stringVector_newCopy

instance StringVectorConstPtr StringVector where
  toStringVectorConst (StringVector ptr') = StringVectorConst $ (HoppyF.castPtr :: HoppyF.Ptr StringVector -> HoppyF.Ptr StringVectorConst) ptr'
  toStringVectorConst (StringVectorGc fptr' ptr') = StringVectorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr StringVector -> HoppyF.Ptr StringVectorConst) ptr'

instance StringVectorPtr StringVector where
  toStringVector = HoppyP.id

stringVector_new ::  HoppyP.IO StringVector
stringVector_new =
  HoppyP.fmap StringVector
  (stringVector_new')

stringVector_newCopy :: (StringVectorValue arg'1) => arg'1 -> HoppyP.IO StringVector
stringVector_newCopy arg'1 =
  withStringVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap StringVector
  (stringVector_newCopy' arg'1')

class StringVectorSuper a where
  downToStringVector :: a -> StringVector


class StringVectorSuperConst a where
  downToStringVectorConst :: a -> StringVectorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr StringVector)) StringVector where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance StringVectorValue a => HoppyFHR.Assignable StringVector a where
  assign x' y' = stringVector_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr StringVector)) StringVector where
  decode = HoppyP.fmap StringVector . HoppyF.peek

instance HoppyFHR.HasContents StringVectorConst (HoppyP.String) where
  toContents this' = do
    size' <- stringVector_size this'
    HoppyP.mapM (HoppyFHR.decode <=< stringVector_atConst this') [0..size'-1]

instance HoppyFHR.HasContents StringVector (HoppyP.String) where
  toContents this' = do
    size' <- stringVector_size this'
    HoppyP.mapM (HoppyFHR.decode <=< stringVector_at this') [0..size'-1]

instance HoppyFHR.FromContents StringVector (HoppyP.String) where
  fromContents values' = do
    vector' <- stringVector_new
    stringVector_reserve vector' $ HoppyFHR.coerceIntegral $ HoppyP.length values'
    HoppyP.mapM_ (stringVector_pushBack vector') values'
    HoppyP.return vector'

class StringVectorConstIteratorValue a where
  withStringVectorConstIteratorPtr :: a -> (StringVectorConstIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} StringVectorConstIteratorConstPtr a => StringVectorConstIteratorValue a where
#else
instance StringVectorConstIteratorConstPtr a => StringVectorConstIteratorValue a where
#endif
  withStringVectorConstIteratorPtr = HoppyP.flip ($) . toStringVectorConstIteratorConst

class (HoppyFHR.CppPtr this) => StringVectorConstIteratorConstPtr this where
  toStringVectorConstIteratorConst :: this -> StringVectorConstIteratorConst

stringVectorConstIterator_deconst :: (StringVectorConstIteratorValue arg'1, StringVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO StringVectorIterator
stringVectorConstIterator_deconst arg'1 arg'2 =
  withStringVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.withCppPtr (toStringVector arg'2) $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorIterator
  (stringVectorConstIterator_deconst' arg'1' arg'2')

stringVectorConstIterator_getConst :: (StringVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO M2.StdStringConst
stringVectorConstIterator_getConst arg'1 =
  withStringVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.StdStringConst
  (stringVectorConstIterator_getConst' arg'1')

stringVectorConstIterator_EQ :: (StringVectorConstIteratorValue arg'1, StringVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stringVectorConstIterator_EQ arg'1 arg'2 =
  withStringVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStringVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stringVectorConstIterator_EQ' arg'1' arg'2')

stringVectorConstIterator_NE :: (StringVectorConstIteratorValue arg'1, StringVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stringVectorConstIterator_NE arg'1 arg'2 =
  withStringVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStringVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stringVectorConstIterator_NE' arg'1' arg'2')

stringVectorConstIterator_atConst :: (StringVectorConstIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO M2.StdStringConst
stringVectorConstIterator_atConst arg'1 arg'2 =
  withStringVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap M2.StdStringConst
  (stringVectorConstIterator_atConst' arg'1' arg'2')

class (StringVectorConstIteratorConstPtr this) => StringVectorConstIteratorPtr this where
  toStringVectorConstIterator :: this -> StringVectorConstIterator

stringVectorConstIterator_ASSIGN :: (StringVectorConstIteratorPtr arg'1, StringVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  withStringVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_ASSIGN' arg'1' arg'2')

stringVectorConstIterator_next :: (StringVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_next arg'1 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_next' arg'1')

stringVectorConstIterator_prev :: (StringVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_prev' arg'1')

stringVectorConstIterator_plus :: (StringVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_plus' arg'1' arg'2')

stringVectorConstIterator_add :: (StringVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_add' arg'1' arg'2')

stringVectorConstIterator_minus :: (StringVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_minus' arg'1' arg'2')

stringVectorConstIterator_difference :: (StringVectorConstIteratorPtr arg'1, StringVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
stringVectorConstIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  withStringVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (stringVectorConstIterator_difference' arg'1' arg'2')

stringVectorConstIterator_subtract :: (StringVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_subtract' arg'1' arg'2')

data StringVectorConstIteratorConst =
    StringVectorConstIteratorConst (HoppyF.Ptr StringVectorConstIteratorConst)
  | StringVectorConstIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StringVectorConstIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq StringVectorConstIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StringVectorConstIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStringVectorConstIteratorToConst :: StringVectorConstIterator -> StringVectorConstIteratorConst
castStringVectorConstIteratorToConst (StringVectorConstIterator ptr') = StringVectorConstIteratorConst $ HoppyF.castPtr ptr'
castStringVectorConstIteratorToConst (StringVectorConstIteratorGc fptr' ptr') = StringVectorConstIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StringVectorConstIteratorConst where
  nullptr = StringVectorConstIteratorConst HoppyF.nullPtr
  
  withCppPtr (StringVectorConstIteratorConst ptr') f' = f' ptr'
  withCppPtr (StringVectorConstIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StringVectorConstIteratorConst ptr') = ptr'
  toPtr (StringVectorConstIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (StringVectorConstIteratorConst _) = HoppyP.return ()
  touchCppPtr (StringVectorConstIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StringVectorConstIteratorConst where
  delete (StringVectorConstIteratorConst ptr') = delete'StringVectorConstIterator ptr'
  delete (StringVectorConstIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StringVectorConstIteratorConst", " object."]
  
  toGc this'@(StringVectorConstIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StringVectorConstIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StringVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StringVectorConstIteratorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable StringVectorConstIteratorConst StringVectorConstIterator where copy = stringVectorConstIterator_newCopy

instance StringVectorConstIteratorConstPtr StringVectorConstIteratorConst where
  toStringVectorConstIteratorConst = HoppyP.id

data StringVectorConstIterator =
    StringVectorConstIterator (HoppyF.Ptr StringVectorConstIterator)
  | StringVectorConstIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StringVectorConstIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq StringVectorConstIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StringVectorConstIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStringVectorConstIteratorToNonconst :: StringVectorConstIteratorConst -> StringVectorConstIterator
castStringVectorConstIteratorToNonconst (StringVectorConstIteratorConst ptr') = StringVectorConstIterator $ HoppyF.castPtr ptr'
castStringVectorConstIteratorToNonconst (StringVectorConstIteratorConstGc fptr' ptr') = StringVectorConstIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StringVectorConstIterator where
  nullptr = StringVectorConstIterator HoppyF.nullPtr
  
  withCppPtr (StringVectorConstIterator ptr') f' = f' ptr'
  withCppPtr (StringVectorConstIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StringVectorConstIterator ptr') = ptr'
  toPtr (StringVectorConstIteratorGc _ ptr') = ptr'
  
  touchCppPtr (StringVectorConstIterator _) = HoppyP.return ()
  touchCppPtr (StringVectorConstIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StringVectorConstIterator where
  delete (StringVectorConstIterator ptr') = delete'StringVectorConstIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr StringVectorConstIteratorConst)
  delete (StringVectorConstIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StringVectorConstIterator", " object."]
  
  toGc this'@(StringVectorConstIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StringVectorConstIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StringVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StringVectorConstIteratorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable StringVectorConstIterator StringVectorConstIterator where copy = stringVectorConstIterator_newCopy

instance StringVectorConstIteratorConstPtr StringVectorConstIterator where
  toStringVectorConstIteratorConst (StringVectorConstIterator ptr') = StringVectorConstIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr StringVectorConstIterator -> HoppyF.Ptr StringVectorConstIteratorConst) ptr'
  toStringVectorConstIteratorConst (StringVectorConstIteratorGc fptr' ptr') = StringVectorConstIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr StringVectorConstIterator -> HoppyF.Ptr StringVectorConstIteratorConst) ptr'

instance StringVectorConstIteratorPtr StringVectorConstIterator where
  toStringVectorConstIterator = HoppyP.id

stringVectorConstIterator_newFromNonconst :: (StringVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_newFromNonconst arg'1 =
  withStringVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_newFromNonconst' arg'1')

stringVectorConstIterator_new ::  HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_new =
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_new')

stringVectorConstIterator_newCopy :: (StringVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO StringVectorConstIterator
stringVectorConstIterator_newCopy arg'1 =
  withStringVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap StringVectorConstIterator
  (stringVectorConstIterator_newCopy' arg'1')

class StringVectorConstIteratorSuper a where
  downToStringVectorConstIterator :: a -> StringVectorConstIterator


class StringVectorConstIteratorSuperConst a where
  downToStringVectorConstIteratorConst :: a -> StringVectorConstIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr StringVectorConstIterator)) StringVectorConstIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance StringVectorConstIteratorValue a => HoppyFHR.Assignable StringVectorConstIterator a where
  assign x' y' = stringVectorConstIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr StringVectorConstIterator)) StringVectorConstIterator where
  decode = HoppyP.fmap StringVectorConstIterator . HoppyF.peek

class StringVectorIteratorValue a where
  withStringVectorIteratorPtr :: a -> (StringVectorIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} StringVectorIteratorConstPtr a => StringVectorIteratorValue a where
#else
instance StringVectorIteratorConstPtr a => StringVectorIteratorValue a where
#endif
  withStringVectorIteratorPtr = HoppyP.flip ($) . toStringVectorIteratorConst

class (HoppyFHR.CppPtr this) => StringVectorIteratorConstPtr this where
  toStringVectorIteratorConst :: this -> StringVectorIteratorConst

stringVectorIterator_getConst :: (StringVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO M2.StdStringConst
stringVectorIterator_getConst arg'1 =
  withStringVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.StdStringConst
  (stringVectorIterator_getConst' arg'1')

stringVectorIterator_EQ :: (StringVectorIteratorValue arg'1, StringVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stringVectorIterator_EQ arg'1 arg'2 =
  withStringVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStringVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stringVectorIterator_EQ' arg'1' arg'2')

stringVectorIterator_NE :: (StringVectorIteratorValue arg'1, StringVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stringVectorIterator_NE arg'1 arg'2 =
  withStringVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStringVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stringVectorIterator_NE' arg'1' arg'2')

stringVectorIterator_atConst :: (StringVectorIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO M2.StdStringConst
stringVectorIterator_atConst arg'1 arg'2 =
  withStringVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap M2.StdStringConst
  (stringVectorIterator_atConst' arg'1' arg'2')

class (StringVectorIteratorConstPtr this) => StringVectorIteratorPtr this where
  toStringVectorIterator :: this -> StringVectorIterator

stringVectorIterator_get :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO M2.StdString
stringVectorIterator_get arg'1 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap M2.StdString
  (stringVectorIterator_get' arg'1')

stringVectorIterator_put :: (StringVectorIteratorPtr arg'1, M2.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
stringVectorIterator_put arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  M2.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (stringVectorIterator_put' arg'1' arg'2')

stringVectorIterator_ASSIGN :: (StringVectorIteratorPtr arg'1, StringVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO StringVectorIterator
stringVectorIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  withStringVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_ASSIGN' arg'1' arg'2')

stringVectorIterator_next :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO StringVectorIterator
stringVectorIterator_next arg'1 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_next' arg'1')

stringVectorIterator_prev :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO StringVectorIterator
stringVectorIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_prev' arg'1')

stringVectorIterator_plus :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorIterator
stringVectorIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_plus' arg'1' arg'2')

stringVectorIterator_add :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorIterator
stringVectorIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_add' arg'1' arg'2')

stringVectorIterator_minus :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorIterator
stringVectorIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_minus' arg'1' arg'2')

stringVectorIterator_difference :: (StringVectorIteratorPtr arg'1, StringVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
stringVectorIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  withStringVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (stringVectorIterator_difference' arg'1' arg'2')

stringVectorIterator_subtract :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO StringVectorIterator
stringVectorIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_subtract' arg'1' arg'2')

stringVectorIterator_at :: (StringVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO M2.StdString
stringVectorIterator_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStringVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap M2.StdString
  (stringVectorIterator_at' arg'1' arg'2')

data StringVectorIteratorConst =
    StringVectorIteratorConst (HoppyF.Ptr StringVectorIteratorConst)
  | StringVectorIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StringVectorIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq StringVectorIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StringVectorIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStringVectorIteratorToConst :: StringVectorIterator -> StringVectorIteratorConst
castStringVectorIteratorToConst (StringVectorIterator ptr') = StringVectorIteratorConst $ HoppyF.castPtr ptr'
castStringVectorIteratorToConst (StringVectorIteratorGc fptr' ptr') = StringVectorIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StringVectorIteratorConst where
  nullptr = StringVectorIteratorConst HoppyF.nullPtr
  
  withCppPtr (StringVectorIteratorConst ptr') f' = f' ptr'
  withCppPtr (StringVectorIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StringVectorIteratorConst ptr') = ptr'
  toPtr (StringVectorIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (StringVectorIteratorConst _) = HoppyP.return ()
  touchCppPtr (StringVectorIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StringVectorIteratorConst where
  delete (StringVectorIteratorConst ptr') = delete'StringVectorIterator ptr'
  delete (StringVectorIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StringVectorIteratorConst", " object."]
  
  toGc this'@(StringVectorIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StringVectorIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StringVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StringVectorIteratorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable StringVectorIteratorConst StringVectorIterator where copy = stringVectorIterator_newCopy

instance StringVectorIteratorConstPtr StringVectorIteratorConst where
  toStringVectorIteratorConst = HoppyP.id

data StringVectorIterator =
    StringVectorIterator (HoppyF.Ptr StringVectorIterator)
  | StringVectorIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StringVectorIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq StringVectorIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StringVectorIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStringVectorIteratorToNonconst :: StringVectorIteratorConst -> StringVectorIterator
castStringVectorIteratorToNonconst (StringVectorIteratorConst ptr') = StringVectorIterator $ HoppyF.castPtr ptr'
castStringVectorIteratorToNonconst (StringVectorIteratorConstGc fptr' ptr') = StringVectorIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StringVectorIterator where
  nullptr = StringVectorIterator HoppyF.nullPtr
  
  withCppPtr (StringVectorIterator ptr') f' = f' ptr'
  withCppPtr (StringVectorIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StringVectorIterator ptr') = ptr'
  toPtr (StringVectorIteratorGc _ ptr') = ptr'
  
  touchCppPtr (StringVectorIterator _) = HoppyP.return ()
  touchCppPtr (StringVectorIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StringVectorIterator where
  delete (StringVectorIterator ptr') = delete'StringVectorIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr StringVectorIteratorConst)
  delete (StringVectorIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StringVectorIterator", " object."]
  
  toGc this'@(StringVectorIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StringVectorIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StringVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StringVectorIteratorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable StringVectorIterator StringVectorIterator where copy = stringVectorIterator_newCopy

instance StringVectorIteratorConstPtr StringVectorIterator where
  toStringVectorIteratorConst (StringVectorIterator ptr') = StringVectorIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr StringVectorIterator -> HoppyF.Ptr StringVectorIteratorConst) ptr'
  toStringVectorIteratorConst (StringVectorIteratorGc fptr' ptr') = StringVectorIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr StringVectorIterator -> HoppyF.Ptr StringVectorIteratorConst) ptr'

instance StringVectorIteratorPtr StringVectorIterator where
  toStringVectorIterator = HoppyP.id

stringVectorIterator_new ::  HoppyP.IO StringVectorIterator
stringVectorIterator_new =
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_new')

stringVectorIterator_newCopy :: (StringVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO StringVectorIterator
stringVectorIterator_newCopy arg'1 =
  withStringVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap StringVectorIterator
  (stringVectorIterator_newCopy' arg'1')

class StringVectorIteratorSuper a where
  downToStringVectorIterator :: a -> StringVectorIterator


class StringVectorIteratorSuperConst a where
  downToStringVectorIteratorConst :: a -> StringVectorIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr StringVectorIterator)) StringVectorIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance StringVectorIteratorValue a => HoppyFHR.Assignable StringVectorIterator a where
  assign x' y' = stringVectorIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr StringVectorIterator)) StringVectorIterator where
  decode = HoppyP.fmap StringVectorIterator . HoppyF.peek

data ValueGenre =
  ValueGenre_Basic
  | ValueGenre_User
  | ValueGenre_Config
  | ValueGenre_System
  | ValueGenre_Count
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum ValueGenre where
  fromEnum ValueGenre_Basic = 0
  fromEnum ValueGenre_User = 1
  fromEnum ValueGenre_Config = 2
  fromEnum ValueGenre_System = 3
  fromEnum ValueGenre_Count = 4
  
  toEnum (0) = ValueGenre_Basic
  toEnum (1) = ValueGenre_User
  toEnum (2) = ValueGenre_Config
  toEnum (3) = ValueGenre_System
  toEnum (4) = ValueGenre_Count
  toEnum n' = HoppyP.error $ "Unknown ValueGenre numeric value: " ++ HoppyP.show n'

class ValueIDValue a where
  withValueIDPtr :: a -> (ValueIDConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} ValueIDConstPtr a => ValueIDValue a where
#else
instance ValueIDConstPtr a => ValueIDValue a where
#endif
  withValueIDPtr = HoppyP.flip ($) . toValueIDConst

class (HoppyFHR.CppPtr this) => ValueIDConstPtr this where
  toValueIDConst :: this -> ValueIDConst

valueID_GetHomeId :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word32
valueID_GetHomeId arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueID_GetHomeId' arg'1')

valueID_GetNodeId :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
valueID_GetNodeId arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueID_GetNodeId' arg'1')

valueID_GetGenre :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO ValueGenre
valueID_GetGenre arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (valueID_GetGenre' arg'1')

valueID_GetCommandClassId :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
valueID_GetCommandClassId arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueID_GetCommandClassId' arg'1')

valueID_GetInstance :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
valueID_GetInstance arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueID_GetInstance' arg'1')

valueID_GetIndex :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUChar
valueID_GetIndex arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueID_GetIndex' arg'1')

valueID_GetType :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO ValueType
valueID_GetType arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (valueID_GetType' arg'1')

valueID_GetId :: (ValueIDValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CULLong
valueID_GetId arg'1 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueID_GetId' arg'1')

valueID_EQ :: (ValueIDValue arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
valueID_EQ arg'1 arg'2 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (valueID_EQ' arg'1' arg'2')

valueID_NE :: (ValueIDValue arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
valueID_NE arg'1 arg'2 =
  withValueIDPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (valueID_NE' arg'1' arg'2')

class (ValueIDConstPtr this) => ValueIDPtr this where
  toValueID :: this -> ValueID

data ValueIDConst =
    ValueIDConst (HoppyF.Ptr ValueIDConst)
  | ValueIDConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueIDConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueIDConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueIDConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDToConst :: ValueID -> ValueIDConst
castValueIDToConst (ValueID ptr') = ValueIDConst $ HoppyF.castPtr ptr'
castValueIDToConst (ValueIDGc fptr' ptr') = ValueIDConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueIDConst where
  nullptr = ValueIDConst HoppyF.nullPtr
  
  withCppPtr (ValueIDConst ptr') f' = f' ptr'
  withCppPtr (ValueIDConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueIDConst ptr') = ptr'
  toPtr (ValueIDConstGc _ ptr') = ptr'
  
  touchCppPtr (ValueIDConst _) = HoppyP.return ()
  touchCppPtr (ValueIDConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueIDConst where
  delete (ValueIDConst ptr') = delete'ValueID ptr'
  delete (ValueIDConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueIDConst", " object."]
  
  toGc this'@(ValueIDConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueID :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDConstGc {}) = HoppyP.return this'

instance ValueIDConstPtr ValueIDConst where
  toValueIDConst = HoppyP.id

data ValueID =
    ValueID (HoppyF.Ptr ValueID)
  | ValueIDGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueID)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueID where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueID where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDToNonconst :: ValueIDConst -> ValueID
castValueIDToNonconst (ValueIDConst ptr') = ValueID $ HoppyF.castPtr ptr'
castValueIDToNonconst (ValueIDConstGc fptr' ptr') = ValueIDGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueID where
  nullptr = ValueID HoppyF.nullPtr
  
  withCppPtr (ValueID ptr') f' = f' ptr'
  withCppPtr (ValueIDGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueID ptr') = ptr'
  toPtr (ValueIDGc _ ptr') = ptr'
  
  touchCppPtr (ValueID _) = HoppyP.return ()
  touchCppPtr (ValueIDGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueID where
  delete (ValueID ptr') = delete'ValueID $ (HoppyF.castPtr ptr' :: HoppyF.Ptr ValueIDConst)
  delete (ValueIDGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueID", " object."]
  
  toGc this'@(ValueID ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueID :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDGc {}) = HoppyP.return this'

instance ValueIDConstPtr ValueID where
  toValueIDConst (ValueID ptr') = ValueIDConst $ (HoppyF.castPtr :: HoppyF.Ptr ValueID -> HoppyF.Ptr ValueIDConst) ptr'
  toValueIDConst (ValueIDGc fptr' ptr') = ValueIDConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ValueID -> HoppyF.Ptr ValueIDConst) ptr'

instance ValueIDPtr ValueID where
  toValueID = HoppyP.id

valueID_new ::  HoppyFC.CUInt -> HoppyFC.CUChar -> ValueGenre -> HoppyFC.CUChar -> HoppyFC.CUChar -> HoppyFC.CUChar -> ValueType -> HoppyP.IO ValueID
valueID_new arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 arg'7 =
  let arg'1' = arg'1 in
  let arg'2' = arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = arg'5 in
  let arg'6' = arg'6 in
  let arg'7' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'7 in
  HoppyP.fmap ValueID
  (valueID_new' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6' arg'7')

valueID_unpack ::  HoppyDW.Word32 -> HoppyFC.CULLong -> HoppyP.IO ValueID
valueID_unpack arg'1 arg'2 =
  let arg'1' = arg'1 in
  let arg'2' = arg'2 in
  HoppyP.fmap ValueID
  (valueID_unpack' arg'1' arg'2')

class ValueIDSuper a where
  downToValueID :: a -> ValueID


class ValueIDSuperConst a where
  downToValueIDConst :: a -> ValueIDConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr ValueID)) ValueID where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr ValueID)) ValueID where
  decode = HoppyP.fmap ValueID . HoppyF.peek

class ValueIDVectorValue a where
  withValueIDVectorPtr :: a -> (ValueIDVectorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} ValueIDVectorConstPtr a => ValueIDVectorValue a where
#else
instance ValueIDVectorConstPtr a => ValueIDVectorValue a where
#endif
  withValueIDVectorPtr = HoppyP.flip ($) . toValueIDVectorConst

class (HoppyFHR.CppPtr this) => ValueIDVectorConstPtr this where
  toValueIDVectorConst :: this -> ValueIDVectorConst

valueIDVector_atConst :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ValueIDConst
valueIDVector_atConst arg'1 arg'2 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueIDConst
  (valueIDVector_atConst' arg'1' arg'2')

valueIDVector_backConst :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO ValueIDConst
valueIDVector_backConst arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDConst
  (valueIDVector_backConst' arg'1')

valueIDVector_beginConst :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO ValueIDVectorConstIterator
valueIDVector_beginConst arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVector_beginConst' arg'1')

valueIDVector_capacity :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
valueIDVector_capacity arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueIDVector_capacity' arg'1')

valueIDVector_empty :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
valueIDVector_empty arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (valueIDVector_empty' arg'1')

valueIDVector_endConst :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO ValueIDVectorConstIterator
valueIDVector_endConst arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVector_endConst' arg'1')

valueIDVector_frontConst :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO ValueIDConst
valueIDVector_frontConst arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDConst
  (valueIDVector_frontConst' arg'1')

valueIDVector_maxSize :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
valueIDVector_maxSize arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueIDVector_maxSize' arg'1')

valueIDVector_size :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
valueIDVector_size arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (valueIDVector_size' arg'1')

class (ValueIDVectorConstPtr this) => ValueIDVectorPtr this where
  toValueIDVector :: this -> ValueIDVector

valueIDVector_at :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ValueID
valueIDVector_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueID
  (valueIDVector_at' arg'1' arg'2')

valueIDVector_back :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyP.IO ValueID
valueIDVector_back arg'1 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  HoppyP.fmap ValueID
  (valueIDVector_back' arg'1')

valueIDVector_begin :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyP.IO ValueIDVectorIterator
valueIDVector_begin arg'1 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVector_begin' arg'1')

valueIDVector_clear :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
valueIDVector_clear arg'1 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  (valueIDVector_clear' arg'1')

valueIDVector_end :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyP.IO ValueIDVectorIterator
valueIDVector_end arg'1 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVector_end' arg'1')

valueIDVector_erase :: (ValueIDVectorPtr arg'1, ValueIDVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
valueIDVector_erase arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  withValueIDVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (valueIDVector_erase' arg'1' arg'2')

valueIDVector_eraseRange :: (ValueIDVectorPtr arg'1, ValueIDVectorIteratorValue arg'2, ValueIDVectorIteratorValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
valueIDVector_eraseRange arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  withValueIDVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  withValueIDVectorIteratorPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (valueIDVector_eraseRange' arg'1' arg'2' arg'3')

valueIDVector_front :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyP.IO ValueID
valueIDVector_front arg'1 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  HoppyP.fmap ValueID
  (valueIDVector_front' arg'1')

valueIDVector_insert :: (ValueIDVectorPtr arg'1, ValueIDVectorIteratorValue arg'2, ValueIDValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ValueIDVectorIterator
valueIDVector_insert arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  withValueIDVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVector_insert' arg'1' arg'2' arg'3')

valueIDVector_popBack :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
valueIDVector_popBack arg'1 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  (valueIDVector_popBack' arg'1')

valueIDVector_pushBack :: (ValueIDVectorPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
valueIDVector_pushBack arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (valueIDVector_pushBack' arg'1' arg'2')

valueIDVector_reserve :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ()
valueIDVector_reserve arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (valueIDVector_reserve' arg'1' arg'2')

valueIDVector_resizeWith :: (ValueIDVectorPtr arg'1, ValueIDValue arg'3) => arg'1 -> HoppyFC.CSize -> arg'3 -> HoppyP.IO ()
valueIDVector_resizeWith arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  withValueIDPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (valueIDVector_resizeWith' arg'1' arg'2' arg'3')

valueIDVector_shrinkToFit :: (ValueIDVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
valueIDVector_shrinkToFit arg'1 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  (valueIDVector_shrinkToFit' arg'1')

valueIDVector_swap :: (ValueIDVectorPtr arg'1, ValueIDVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
valueIDVector_swap arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toValueIDVector arg'2) $ \arg'2' ->
  (valueIDVector_swap' arg'1' arg'2')

valueIDVector_ASSIGN :: (ValueIDVectorPtr arg'1, ValueIDVectorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ValueIDVector
valueIDVector_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVector arg'1) $ \arg'1' ->
  withValueIDVectorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap ValueIDVector
  (valueIDVector_ASSIGN' arg'1' arg'2')

data ValueIDVectorConst =
    ValueIDVectorConst (HoppyF.Ptr ValueIDVectorConst)
  | ValueIDVectorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueIDVectorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueIDVectorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueIDVectorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDVectorToConst :: ValueIDVector -> ValueIDVectorConst
castValueIDVectorToConst (ValueIDVector ptr') = ValueIDVectorConst $ HoppyF.castPtr ptr'
castValueIDVectorToConst (ValueIDVectorGc fptr' ptr') = ValueIDVectorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueIDVectorConst where
  nullptr = ValueIDVectorConst HoppyF.nullPtr
  
  withCppPtr (ValueIDVectorConst ptr') f' = f' ptr'
  withCppPtr (ValueIDVectorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueIDVectorConst ptr') = ptr'
  toPtr (ValueIDVectorConstGc _ ptr') = ptr'
  
  touchCppPtr (ValueIDVectorConst _) = HoppyP.return ()
  touchCppPtr (ValueIDVectorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueIDVectorConst where
  delete (ValueIDVectorConst ptr') = delete'ValueIDVector ptr'
  delete (ValueIDVectorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueIDVectorConst", " object."]
  
  toGc this'@(ValueIDVectorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDVectorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueIDVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDVectorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable ValueIDVectorConst ValueIDVector where copy = valueIDVector_newCopy

instance ValueIDVectorConstPtr ValueIDVectorConst where
  toValueIDVectorConst = HoppyP.id

data ValueIDVector =
    ValueIDVector (HoppyF.Ptr ValueIDVector)
  | ValueIDVectorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueIDVector)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueIDVector where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueIDVector where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDVectorToNonconst :: ValueIDVectorConst -> ValueIDVector
castValueIDVectorToNonconst (ValueIDVectorConst ptr') = ValueIDVector $ HoppyF.castPtr ptr'
castValueIDVectorToNonconst (ValueIDVectorConstGc fptr' ptr') = ValueIDVectorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueIDVector where
  nullptr = ValueIDVector HoppyF.nullPtr
  
  withCppPtr (ValueIDVector ptr') f' = f' ptr'
  withCppPtr (ValueIDVectorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueIDVector ptr') = ptr'
  toPtr (ValueIDVectorGc _ ptr') = ptr'
  
  touchCppPtr (ValueIDVector _) = HoppyP.return ()
  touchCppPtr (ValueIDVectorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueIDVector where
  delete (ValueIDVector ptr') = delete'ValueIDVector $ (HoppyF.castPtr ptr' :: HoppyF.Ptr ValueIDVectorConst)
  delete (ValueIDVectorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueIDVector", " object."]
  
  toGc this'@(ValueIDVector ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDVectorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueIDVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDVectorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable ValueIDVector ValueIDVector where copy = valueIDVector_newCopy

instance ValueIDVectorConstPtr ValueIDVector where
  toValueIDVectorConst (ValueIDVector ptr') = ValueIDVectorConst $ (HoppyF.castPtr :: HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDVectorConst) ptr'
  toValueIDVectorConst (ValueIDVectorGc fptr' ptr') = ValueIDVectorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ValueIDVector -> HoppyF.Ptr ValueIDVectorConst) ptr'

instance ValueIDVectorPtr ValueIDVector where
  toValueIDVector = HoppyP.id

valueIDVector_new ::  HoppyP.IO ValueIDVector
valueIDVector_new =
  HoppyP.fmap ValueIDVector
  (valueIDVector_new')

valueIDVector_newCopy :: (ValueIDVectorValue arg'1) => arg'1 -> HoppyP.IO ValueIDVector
valueIDVector_newCopy arg'1 =
  withValueIDVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDVector
  (valueIDVector_newCopy' arg'1')

class ValueIDVectorSuper a where
  downToValueIDVector :: a -> ValueIDVector


class ValueIDVectorSuperConst a where
  downToValueIDVectorConst :: a -> ValueIDVectorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr ValueIDVector)) ValueIDVector where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance ValueIDVectorValue a => HoppyFHR.Assignable ValueIDVector a where
  assign x' y' = valueIDVector_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr ValueIDVector)) ValueIDVector where
  decode = HoppyP.fmap ValueIDVector . HoppyF.peek

class ValueIDVectorConstIteratorValue a where
  withValueIDVectorConstIteratorPtr :: a -> (ValueIDVectorConstIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} ValueIDVectorConstIteratorConstPtr a => ValueIDVectorConstIteratorValue a where
#else
instance ValueIDVectorConstIteratorConstPtr a => ValueIDVectorConstIteratorValue a where
#endif
  withValueIDVectorConstIteratorPtr = HoppyP.flip ($) . toValueIDVectorConstIteratorConst

class (HoppyFHR.CppPtr this) => ValueIDVectorConstIteratorConstPtr this where
  toValueIDVectorConstIteratorConst :: this -> ValueIDVectorConstIteratorConst

valueIDVectorConstIterator_deconst :: (ValueIDVectorConstIteratorValue arg'1, ValueIDVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ValueIDVectorIterator
valueIDVectorConstIterator_deconst arg'1 arg'2 =
  withValueIDVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.withCppPtr (toValueIDVector arg'2) $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorConstIterator_deconst' arg'1' arg'2')

valueIDVectorConstIterator_getConst :: (ValueIDVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO ValueIDConst
valueIDVectorConstIterator_getConst arg'1 =
  withValueIDVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDConst
  (valueIDVectorConstIterator_getConst' arg'1')

valueIDVectorConstIterator_EQ :: (ValueIDVectorConstIteratorValue arg'1, ValueIDVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
valueIDVectorConstIterator_EQ arg'1 arg'2 =
  withValueIDVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withValueIDVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (valueIDVectorConstIterator_EQ' arg'1' arg'2')

valueIDVectorConstIterator_NE :: (ValueIDVectorConstIteratorValue arg'1, ValueIDVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
valueIDVectorConstIterator_NE arg'1 arg'2 =
  withValueIDVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withValueIDVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (valueIDVectorConstIterator_NE' arg'1' arg'2')

valueIDVectorConstIterator_atConst :: (ValueIDVectorConstIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDConst
valueIDVectorConstIterator_atConst arg'1 arg'2 =
  withValueIDVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueIDConst
  (valueIDVectorConstIterator_atConst' arg'1' arg'2')

class (ValueIDVectorConstIteratorConstPtr this) => ValueIDVectorConstIteratorPtr this where
  toValueIDVectorConstIterator :: this -> ValueIDVectorConstIterator

valueIDVectorConstIterator_ASSIGN :: (ValueIDVectorConstIteratorPtr arg'1, ValueIDVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  withValueIDVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_ASSIGN' arg'1' arg'2')

valueIDVectorConstIterator_next :: (ValueIDVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_next arg'1 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_next' arg'1')

valueIDVectorConstIterator_prev :: (ValueIDVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_prev' arg'1')

valueIDVectorConstIterator_plus :: (ValueIDVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_plus' arg'1' arg'2')

valueIDVectorConstIterator_add :: (ValueIDVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_add' arg'1' arg'2')

valueIDVectorConstIterator_minus :: (ValueIDVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_minus' arg'1' arg'2')

valueIDVectorConstIterator_difference :: (ValueIDVectorConstIteratorPtr arg'1, ValueIDVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
valueIDVectorConstIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  withValueIDVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (valueIDVectorConstIterator_difference' arg'1' arg'2')

valueIDVectorConstIterator_subtract :: (ValueIDVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_subtract' arg'1' arg'2')

data ValueIDVectorConstIteratorConst =
    ValueIDVectorConstIteratorConst (HoppyF.Ptr ValueIDVectorConstIteratorConst)
  | ValueIDVectorConstIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueIDVectorConstIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueIDVectorConstIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueIDVectorConstIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDVectorConstIteratorToConst :: ValueIDVectorConstIterator -> ValueIDVectorConstIteratorConst
castValueIDVectorConstIteratorToConst (ValueIDVectorConstIterator ptr') = ValueIDVectorConstIteratorConst $ HoppyF.castPtr ptr'
castValueIDVectorConstIteratorToConst (ValueIDVectorConstIteratorGc fptr' ptr') = ValueIDVectorConstIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueIDVectorConstIteratorConst where
  nullptr = ValueIDVectorConstIteratorConst HoppyF.nullPtr
  
  withCppPtr (ValueIDVectorConstIteratorConst ptr') f' = f' ptr'
  withCppPtr (ValueIDVectorConstIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueIDVectorConstIteratorConst ptr') = ptr'
  toPtr (ValueIDVectorConstIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (ValueIDVectorConstIteratorConst _) = HoppyP.return ()
  touchCppPtr (ValueIDVectorConstIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueIDVectorConstIteratorConst where
  delete (ValueIDVectorConstIteratorConst ptr') = delete'ValueIDVectorConstIterator ptr'
  delete (ValueIDVectorConstIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueIDVectorConstIteratorConst", " object."]
  
  toGc this'@(ValueIDVectorConstIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDVectorConstIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueIDVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDVectorConstIteratorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable ValueIDVectorConstIteratorConst ValueIDVectorConstIterator where copy = valueIDVectorConstIterator_newCopy

instance ValueIDVectorConstIteratorConstPtr ValueIDVectorConstIteratorConst where
  toValueIDVectorConstIteratorConst = HoppyP.id

data ValueIDVectorConstIterator =
    ValueIDVectorConstIterator (HoppyF.Ptr ValueIDVectorConstIterator)
  | ValueIDVectorConstIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueIDVectorConstIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueIDVectorConstIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueIDVectorConstIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDVectorConstIteratorToNonconst :: ValueIDVectorConstIteratorConst -> ValueIDVectorConstIterator
castValueIDVectorConstIteratorToNonconst (ValueIDVectorConstIteratorConst ptr') = ValueIDVectorConstIterator $ HoppyF.castPtr ptr'
castValueIDVectorConstIteratorToNonconst (ValueIDVectorConstIteratorConstGc fptr' ptr') = ValueIDVectorConstIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueIDVectorConstIterator where
  nullptr = ValueIDVectorConstIterator HoppyF.nullPtr
  
  withCppPtr (ValueIDVectorConstIterator ptr') f' = f' ptr'
  withCppPtr (ValueIDVectorConstIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueIDVectorConstIterator ptr') = ptr'
  toPtr (ValueIDVectorConstIteratorGc _ ptr') = ptr'
  
  touchCppPtr (ValueIDVectorConstIterator _) = HoppyP.return ()
  touchCppPtr (ValueIDVectorConstIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueIDVectorConstIterator where
  delete (ValueIDVectorConstIterator ptr') = delete'ValueIDVectorConstIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr ValueIDVectorConstIteratorConst)
  delete (ValueIDVectorConstIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueIDVectorConstIterator", " object."]
  
  toGc this'@(ValueIDVectorConstIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDVectorConstIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueIDVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDVectorConstIteratorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable ValueIDVectorConstIterator ValueIDVectorConstIterator where copy = valueIDVectorConstIterator_newCopy

instance ValueIDVectorConstIteratorConstPtr ValueIDVectorConstIterator where
  toValueIDVectorConstIteratorConst (ValueIDVectorConstIterator ptr') = ValueIDVectorConstIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr ValueIDVectorConstIterator -> HoppyF.Ptr ValueIDVectorConstIteratorConst) ptr'
  toValueIDVectorConstIteratorConst (ValueIDVectorConstIteratorGc fptr' ptr') = ValueIDVectorConstIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ValueIDVectorConstIterator -> HoppyF.Ptr ValueIDVectorConstIteratorConst) ptr'

instance ValueIDVectorConstIteratorPtr ValueIDVectorConstIterator where
  toValueIDVectorConstIterator = HoppyP.id

valueIDVectorConstIterator_newFromNonconst :: (ValueIDVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_newFromNonconst arg'1 =
  withValueIDVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_newFromNonconst' arg'1')

valueIDVectorConstIterator_new ::  HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_new =
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_new')

valueIDVectorConstIterator_newCopy :: (ValueIDVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO ValueIDVectorConstIterator
valueIDVectorConstIterator_newCopy arg'1 =
  withValueIDVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDVectorConstIterator
  (valueIDVectorConstIterator_newCopy' arg'1')

class ValueIDVectorConstIteratorSuper a where
  downToValueIDVectorConstIterator :: a -> ValueIDVectorConstIterator


class ValueIDVectorConstIteratorSuperConst a where
  downToValueIDVectorConstIteratorConst :: a -> ValueIDVectorConstIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr ValueIDVectorConstIterator)) ValueIDVectorConstIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance ValueIDVectorConstIteratorValue a => HoppyFHR.Assignable ValueIDVectorConstIterator a where
  assign x' y' = valueIDVectorConstIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr ValueIDVectorConstIterator)) ValueIDVectorConstIterator where
  decode = HoppyP.fmap ValueIDVectorConstIterator . HoppyF.peek

class ValueIDVectorIteratorValue a where
  withValueIDVectorIteratorPtr :: a -> (ValueIDVectorIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} ValueIDVectorIteratorConstPtr a => ValueIDVectorIteratorValue a where
#else
instance ValueIDVectorIteratorConstPtr a => ValueIDVectorIteratorValue a where
#endif
  withValueIDVectorIteratorPtr = HoppyP.flip ($) . toValueIDVectorIteratorConst

class (HoppyFHR.CppPtr this) => ValueIDVectorIteratorConstPtr this where
  toValueIDVectorIteratorConst :: this -> ValueIDVectorIteratorConst

valueIDVectorIterator_getConst :: (ValueIDVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO ValueIDConst
valueIDVectorIterator_getConst arg'1 =
  withValueIDVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDConst
  (valueIDVectorIterator_getConst' arg'1')

valueIDVectorIterator_EQ :: (ValueIDVectorIteratorValue arg'1, ValueIDVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
valueIDVectorIterator_EQ arg'1 arg'2 =
  withValueIDVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withValueIDVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (valueIDVectorIterator_EQ' arg'1' arg'2')

valueIDVectorIterator_NE :: (ValueIDVectorIteratorValue arg'1, ValueIDVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
valueIDVectorIterator_NE arg'1 arg'2 =
  withValueIDVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withValueIDVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (valueIDVectorIterator_NE' arg'1' arg'2')

valueIDVectorIterator_atConst :: (ValueIDVectorIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDConst
valueIDVectorIterator_atConst arg'1 arg'2 =
  withValueIDVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueIDConst
  (valueIDVectorIterator_atConst' arg'1' arg'2')

class (ValueIDVectorIteratorConstPtr this) => ValueIDVectorIteratorPtr this where
  toValueIDVectorIterator :: this -> ValueIDVectorIterator

valueIDVectorIterator_get :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO ValueID
valueIDVectorIterator_get arg'1 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap ValueID
  (valueIDVectorIterator_get' arg'1')

valueIDVectorIterator_put :: (ValueIDVectorIteratorPtr arg'1, ValueIDValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
valueIDVectorIterator_put arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  withValueIDPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (valueIDVectorIterator_put' arg'1' arg'2')

valueIDVectorIterator_ASSIGN :: (ValueIDVectorIteratorPtr arg'1, ValueIDVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  withValueIDVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_ASSIGN' arg'1' arg'2')

valueIDVectorIterator_next :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_next arg'1 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_next' arg'1')

valueIDVectorIterator_prev :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_prev' arg'1')

valueIDVectorIterator_plus :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_plus' arg'1' arg'2')

valueIDVectorIterator_add :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_add' arg'1' arg'2')

valueIDVectorIterator_minus :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_minus' arg'1' arg'2')

valueIDVectorIterator_difference :: (ValueIDVectorIteratorPtr arg'1, ValueIDVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
valueIDVectorIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  withValueIDVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (valueIDVectorIterator_difference' arg'1' arg'2')

valueIDVectorIterator_subtract :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_subtract' arg'1' arg'2')

valueIDVectorIterator_at :: (ValueIDVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO ValueID
valueIDVectorIterator_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toValueIDVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap ValueID
  (valueIDVectorIterator_at' arg'1' arg'2')

data ValueIDVectorIteratorConst =
    ValueIDVectorIteratorConst (HoppyF.Ptr ValueIDVectorIteratorConst)
  | ValueIDVectorIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueIDVectorIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueIDVectorIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueIDVectorIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDVectorIteratorToConst :: ValueIDVectorIterator -> ValueIDVectorIteratorConst
castValueIDVectorIteratorToConst (ValueIDVectorIterator ptr') = ValueIDVectorIteratorConst $ HoppyF.castPtr ptr'
castValueIDVectorIteratorToConst (ValueIDVectorIteratorGc fptr' ptr') = ValueIDVectorIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueIDVectorIteratorConst where
  nullptr = ValueIDVectorIteratorConst HoppyF.nullPtr
  
  withCppPtr (ValueIDVectorIteratorConst ptr') f' = f' ptr'
  withCppPtr (ValueIDVectorIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueIDVectorIteratorConst ptr') = ptr'
  toPtr (ValueIDVectorIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (ValueIDVectorIteratorConst _) = HoppyP.return ()
  touchCppPtr (ValueIDVectorIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueIDVectorIteratorConst where
  delete (ValueIDVectorIteratorConst ptr') = delete'ValueIDVectorIterator ptr'
  delete (ValueIDVectorIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueIDVectorIteratorConst", " object."]
  
  toGc this'@(ValueIDVectorIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDVectorIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueIDVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDVectorIteratorConstGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable ValueIDVectorIteratorConst ValueIDVectorIterator where copy = valueIDVectorIterator_newCopy

instance ValueIDVectorIteratorConstPtr ValueIDVectorIteratorConst where
  toValueIDVectorIteratorConst = HoppyP.id

data ValueIDVectorIterator =
    ValueIDVectorIterator (HoppyF.Ptr ValueIDVectorIterator)
  | ValueIDVectorIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ValueIDVectorIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq ValueIDVectorIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ValueIDVectorIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castValueIDVectorIteratorToNonconst :: ValueIDVectorIteratorConst -> ValueIDVectorIterator
castValueIDVectorIteratorToNonconst (ValueIDVectorIteratorConst ptr') = ValueIDVectorIterator $ HoppyF.castPtr ptr'
castValueIDVectorIteratorToNonconst (ValueIDVectorIteratorConstGc fptr' ptr') = ValueIDVectorIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ValueIDVectorIterator where
  nullptr = ValueIDVectorIterator HoppyF.nullPtr
  
  withCppPtr (ValueIDVectorIterator ptr') f' = f' ptr'
  withCppPtr (ValueIDVectorIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ValueIDVectorIterator ptr') = ptr'
  toPtr (ValueIDVectorIteratorGc _ ptr') = ptr'
  
  touchCppPtr (ValueIDVectorIterator _) = HoppyP.return ()
  touchCppPtr (ValueIDVectorIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ValueIDVectorIterator where
  delete (ValueIDVectorIterator ptr') = delete'ValueIDVectorIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr ValueIDVectorIteratorConst)
  delete (ValueIDVectorIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ValueIDVectorIterator", " object."]
  
  toGc this'@(ValueIDVectorIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ValueIDVectorIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ValueIDVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ValueIDVectorIteratorGc {}) = HoppyP.return this'

instance HoppyFHR.Copyable ValueIDVectorIterator ValueIDVectorIterator where copy = valueIDVectorIterator_newCopy

instance ValueIDVectorIteratorConstPtr ValueIDVectorIterator where
  toValueIDVectorIteratorConst (ValueIDVectorIterator ptr') = ValueIDVectorIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr ValueIDVectorIterator -> HoppyF.Ptr ValueIDVectorIteratorConst) ptr'
  toValueIDVectorIteratorConst (ValueIDVectorIteratorGc fptr' ptr') = ValueIDVectorIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ValueIDVectorIterator -> HoppyF.Ptr ValueIDVectorIteratorConst) ptr'

instance ValueIDVectorIteratorPtr ValueIDVectorIterator where
  toValueIDVectorIterator = HoppyP.id

valueIDVectorIterator_new ::  HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_new =
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_new')

valueIDVectorIterator_newCopy :: (ValueIDVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO ValueIDVectorIterator
valueIDVectorIterator_newCopy arg'1 =
  withValueIDVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap ValueIDVectorIterator
  (valueIDVectorIterator_newCopy' arg'1')

class ValueIDVectorIteratorSuper a where
  downToValueIDVectorIterator :: a -> ValueIDVectorIterator


class ValueIDVectorIteratorSuperConst a where
  downToValueIDVectorIteratorConst :: a -> ValueIDVectorIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr ValueIDVectorIterator)) ValueIDVectorIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance ValueIDVectorIteratorValue a => HoppyFHR.Assignable ValueIDVectorIterator a where
  assign x' y' = valueIDVectorIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr ValueIDVectorIterator)) ValueIDVectorIterator where
  decode = HoppyP.fmap ValueIDVectorIterator . HoppyF.peek

data ValueType =
  ValueType_Bool
  | ValueType_Byte
  | ValueType_Decimal
  | ValueType_Int
  | ValueType_List
  | ValueType_Schedule
  | ValueType_Short
  | ValueType_String
  | ValueType_Button
  | ValueType_Raw
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum ValueType where
  fromEnum ValueType_Bool = 0
  fromEnum ValueType_Byte = 1
  fromEnum ValueType_Decimal = 2
  fromEnum ValueType_Int = 3
  fromEnum ValueType_List = 4
  fromEnum ValueType_Schedule = 5
  fromEnum ValueType_Short = 6
  fromEnum ValueType_String = 7
  fromEnum ValueType_Button = 8
  fromEnum ValueType_Raw = 9
  
  toEnum (0) = ValueType_Bool
  toEnum (1) = ValueType_Byte
  toEnum (2) = ValueType_Decimal
  toEnum (3) = ValueType_Int
  toEnum (4) = ValueType_List
  toEnum (5) = ValueType_Schedule
  toEnum (6) = ValueType_Short
  toEnum (7) = ValueType_String
  toEnum (8) = ValueType_Button
  toEnum (9) = ValueType_Raw
  toEnum n' = HoppyP.error $ "Unknown ValueType numeric value: " ++ HoppyP.show n'