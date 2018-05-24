////////// GENERATED FILE, EDITS WILL BE LOST //////////

#include "/home/stephen/homeautomation/smarthome/.stack-work/install/x86_64-linux-nopie/lts-10.0/8.2.2/share/x86_64-linux-ghc-8.2.2/hoppy-std-0.3.0/include/hoppy/std/iterator.hpp"
#include "gen_ozw.hpp"
#include <Manager.h>
#include <Notification.h>
#include <Options.h>
#include <ValueID.h>
#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

extern "C" {

HaskellOnNotificationCallback_impl::HaskellOnNotificationCallback_impl(void(*f)(OpenZWave::Notification const*, void*), void (*release)(void(*)()), bool releaseRelease) :
    f_(f), release_(release), releaseRelease_(releaseRelease) {}

HaskellOnNotificationCallback_impl::~HaskellOnNotificationCallback_impl() {
    if (release_) {
        release_(reinterpret_cast<void(*)()>(f_));
        if (releaseRelease_) {
            release_(reinterpret_cast<void(*)()>(release_));
        }
    }
}

void HaskellOnNotificationCallback_impl::operator()(OpenZWave::Notification const*arg1, void*arg2) {
f_(arg1, arg2);
}

void HaskellOnNotificationCallback::operator()(OpenZWave::Notification const*arg1, void*arg2) {
(*impl_)(arg1, arg2);
}
HaskellOnNotificationCallback::operator bool() const {
return static_cast<bool>(impl_);
}

HaskellOnNotificationCallback_impl*genpop__HaskellOnNotificationCallback(void(*f)(OpenZWave::Notification const*, void*), void(*release)(void(*)()), bool releaseRelease) {
return new HaskellOnNotificationCallback_impl(f, release, releaseRelease);
}

std::vector<int>*genpop__IntVector_new() {
return new std::vector<int>();
}

std::vector<int>*genpop__IntVector_newCopy(std::vector<int>const*arg1_) {
std::vector<int>const&arg1 = *arg1_;
return new std::vector<int>(arg1);
}

void gendel__IntVector(std::vector<int>const*self) {
delete self;
}

int*genpop__IntVector_at(std::vector<int>*self, size_t arg1) {
return &(self->at(arg1));
}

int const*genpop__IntVector_atConst(std::vector<int>*self, size_t arg1) {
return &(self->at(arg1));
}

int*genpop__IntVector_back(std::vector<int>*self) {
return &(self->back());
}

int const*genpop__IntVector_backConst(std::vector<int>*self) {
return &(self->back());
}

std::vector<int>::iterator*genpop__IntVector_begin(std::vector<int>*self) {
return new std::vector<int>::iterator(self->begin());
}

std::vector<int>::const_iterator*genpop__IntVector_beginConst(std::vector<int>*self) {
return new std::vector<int>::const_iterator(self->begin());
}

size_t genpop__IntVector_capacity(std::vector<int>*self) {
return self->capacity();
}

void genpop__IntVector_clear(std::vector<int>*self) {
self->clear();
}

bool genpop__IntVector_empty(std::vector<int>*self) {
return self->empty();
}

std::vector<int>::iterator*genpop__IntVector_end(std::vector<int>*self) {
return new std::vector<int>::iterator(self->end());
}

std::vector<int>::const_iterator*genpop__IntVector_endConst(std::vector<int>*self) {
return new std::vector<int>::const_iterator(self->end());
}

void genpop__IntVector_erase(std::vector<int>*self, std::vector<int>::iterator const*arg1_) {
std::vector<int>::iterator const&arg1 = *arg1_;
self->erase(arg1);
}

void genpop__IntVector_eraseRange(std::vector<int>*self, std::vector<int>::iterator const*arg1_, std::vector<int>::iterator const*arg2_) {
std::vector<int>::iterator const&arg1 = *arg1_;
std::vector<int>::iterator const&arg2 = *arg2_;
self->erase(arg1, arg2);
}

int*genpop__IntVector_front(std::vector<int>*self) {
return &(self->front());
}

int const*genpop__IntVector_frontConst(std::vector<int>*self) {
return &(self->front());
}

std::vector<int>::iterator*genpop__IntVector_insert(std::vector<int>*self, std::vector<int>::iterator const*arg1_, int arg2) {
std::vector<int>::iterator const&arg1 = *arg1_;
return new std::vector<int>::iterator(self->insert(arg1, arg2));
}

size_t genpop__IntVector_maxSize(std::vector<int>*self) {
return self->max_size();
}

void genpop__IntVector_popBack(std::vector<int>*self) {
self->pop_back();
}

void genpop__IntVector_pushBack(std::vector<int>*self, int arg1) {
self->push_back(arg1);
}

void genpop__IntVector_reserve(std::vector<int>*self, size_t arg1) {
self->reserve(arg1);
}

void genpop__IntVector_resize(std::vector<int>*self, size_t arg1) {
self->resize(arg1);
}

void genpop__IntVector_resizeWith(std::vector<int>*self, size_t arg1, int arg2) {
self->resize(arg1, arg2);
}

void genpop__IntVector_shrinkToFit(std::vector<int>*self) {
self->shrink_to_fit();
}

size_t genpop__IntVector_size(std::vector<int>*self) {
return self->size();
}

void genpop__IntVector_swap(std::vector<int>*self, std::vector<int>*arg1_) {
std::vector<int>&arg1 = *arg1_;
self->swap(arg1);
}

std::vector<int>*genpop__IntVector_ASSIGN(std::vector<int>*self, std::vector<int>const*arg1_) {
std::vector<int>const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_newFromNonconst(std::vector<int>::iterator const*arg1_) {
std::vector<int>::iterator const&arg1 = *arg1_;
return new std::vector<int>::const_iterator(arg1);
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_new() {
return new std::vector<int>::const_iterator();
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_newCopy(std::vector<int>::const_iterator const*arg1_) {
std::vector<int>::const_iterator const&arg1 = *arg1_;
return new std::vector<int>::const_iterator(arg1);
}

void gendel__IntVectorConstIterator(std::vector<int>::const_iterator const*self) {
delete self;
}

std::vector<int>::iterator*genpop__IntVectorConstIterator_deconst(std::vector<int>::const_iterator const*arg1_, std::vector<int>*arg2_) {
std::vector<int>::const_iterator const&arg1 = *arg1_;
std::vector<int>&arg2 = *arg2_;
return new std::vector<int>::iterator(hoppy::iterator::deconst(arg1, arg2));
}

int const*genpop__IntVectorConstIterator_getConst(std::vector<int>::const_iterator*self) {
return &((*(*self)));
}

bool genpop__IntVectorConstIterator_EQ(std::vector<int>::const_iterator*self, std::vector<int>::const_iterator const*arg1_) {
std::vector<int>::const_iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__IntVectorConstIterator_NE(std::vector<int>::const_iterator*self, std::vector<int>::const_iterator const*arg1_) {
std::vector<int>::const_iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_ASSIGN(std::vector<int>::const_iterator*self, std::vector<int>::const_iterator const*arg1_) {
std::vector<int>::const_iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_next(std::vector<int>::const_iterator*self) {
return &((++(*self)));
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_prev(std::vector<int>::const_iterator*self) {
return &((--(*self)));
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_plus(std::vector<int>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<int>::const_iterator(((*self)+arg1));
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_add(std::vector<int>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_minus(std::vector<int>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<int>::const_iterator(((*self)-arg1));
}

ptrdiff_t genpop__IntVectorConstIterator_difference(std::vector<int>::const_iterator*self, std::vector<int>::const_iterator const*arg1_) {
std::vector<int>::const_iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<int>::const_iterator*genpop__IntVectorConstIterator_subtract(std::vector<int>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

int const*genpop__IntVectorConstIterator_atConst(std::vector<int>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

std::vector<int>::iterator*genpop__IntVectorIterator_new() {
return new std::vector<int>::iterator();
}

std::vector<int>::iterator*genpop__IntVectorIterator_newCopy(std::vector<int>::iterator const*arg1_) {
std::vector<int>::iterator const&arg1 = *arg1_;
return new std::vector<int>::iterator(arg1);
}

void gendel__IntVectorIterator(std::vector<int>::iterator const*self) {
delete self;
}

int*genpop__IntVectorIterator_get(std::vector<int>::iterator*self) {
return &((*(*self)));
}

int const*genpop__IntVectorIterator_getConst(std::vector<int>::iterator*self) {
return &((*(*self)));
}

void genpop__IntVectorIterator_put(std::vector<int>::iterator*arg1, int arg2) {
hoppy::iterator::put(arg1, arg2);
}

bool genpop__IntVectorIterator_EQ(std::vector<int>::iterator*self, std::vector<int>::iterator const*arg1_) {
std::vector<int>::iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__IntVectorIterator_NE(std::vector<int>::iterator*self, std::vector<int>::iterator const*arg1_) {
std::vector<int>::iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<int>::iterator*genpop__IntVectorIterator_ASSIGN(std::vector<int>::iterator*self, std::vector<int>::iterator const*arg1_) {
std::vector<int>::iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<int>::iterator*genpop__IntVectorIterator_next(std::vector<int>::iterator*self) {
return &((++(*self)));
}

std::vector<int>::iterator*genpop__IntVectorIterator_prev(std::vector<int>::iterator*self) {
return &((--(*self)));
}

std::vector<int>::iterator*genpop__IntVectorIterator_plus(std::vector<int>::iterator*self, ptrdiff_t arg1) {
return new std::vector<int>::iterator(((*self)+arg1));
}

std::vector<int>::iterator*genpop__IntVectorIterator_add(std::vector<int>::iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<int>::iterator*genpop__IntVectorIterator_minus(std::vector<int>::iterator*self, ptrdiff_t arg1) {
return new std::vector<int>::iterator(((*self)-arg1));
}

ptrdiff_t genpop__IntVectorIterator_difference(std::vector<int>::iterator*self, std::vector<int>::iterator const*arg1_) {
std::vector<int>::iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<int>::iterator*genpop__IntVectorIterator_subtract(std::vector<int>::iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

int*genpop__IntVectorIterator_at(std::vector<int>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

int const*genpop__IntVectorIterator_atConst(std::vector<int>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

OpenZWave::Manager*genpop__Manager_Create() {
return OpenZWave::Manager::Create();
}

OpenZWave::Manager*genpop__Manager_Get() {
return OpenZWave::Manager::Get();
}

void genpop__Manager_Destroy() {
OpenZWave::Manager::Destroy();
}

std::string const*genpop__Manager_getVersionAsString() {
return new std::string(OpenZWave::Manager::getVersionAsString());
}

std::string const*genpop__Manager_getVersionLongAsString() {
return new std::string(OpenZWave::Manager::getVersionLongAsString());
}

void genpop__Manager_WriteConfig(OpenZWave::Manager*self, uint32_t const arg1) {
self->WriteConfig(arg1);
}

OpenZWave::Options*genpop__Manager_GetOptions(OpenZWave::Manager*self) {
return self->GetOptions();
}

bool genpop__Manager_AddDriver(OpenZWave::Manager*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return self->AddDriver(arg1);
}

bool genpop__Manager_RemoveDriver(OpenZWave::Manager*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return self->RemoveDriver(arg1);
}

unsigned char genpop__Manager_GetControllerNodeId(OpenZWave::Manager*self, uint32_t const arg1) {
return self->GetControllerNodeId(arg1);
}

unsigned char genpop__Manager_GetSUCNodeId(OpenZWave::Manager*self, uint32_t const arg1) {
return self->GetSUCNodeId(arg1);
}

bool genpop__Manager_IsPrimaryController(OpenZWave::Manager*self, uint32_t const arg1) {
return self->IsPrimaryController(arg1);
}

bool genpop__Manager_IsStaticUpdateController(OpenZWave::Manager*self, uint32_t const arg1) {
return self->IsStaticUpdateController(arg1);
}

bool genpop__Manager_IsBridgeController(OpenZWave::Manager*self, uint32_t const arg1) {
return self->IsBridgeController(arg1);
}

std::string const*genpop__Manager_GetLibraryVersion(OpenZWave::Manager*self, uint32_t const arg1) {
return new std::string(self->GetLibraryVersion(arg1));
}

std::string const*genpop__Manager_GetLibraryTypeName(OpenZWave::Manager*self, uint32_t const arg1) {
return new std::string(self->GetLibraryTypeName(arg1));
}

int genpop__Manager_GetSendQueueCount(OpenZWave::Manager*self, uint32_t const arg1) {
return self->GetSendQueueCount(arg1);
}

void genpop__Manager_LogDriverStatistics(OpenZWave::Manager*self, uint32_t const arg1) {
self->LogDriverStatistics(arg1);
}

std::string const*genpop__Manager_GetControllerPath(OpenZWave::Manager*self, uint32_t const arg1) {
return new std::string(self->GetControllerPath(arg1));
}

int genpop__Manager_GetPollInterval(OpenZWave::Manager*self) {
return self->GetPollInterval();
}

void genpop__Manager_SetPollInterval(OpenZWave::Manager*self, int arg1, bool arg2) {
self->SetPollInterval(arg1, arg2);
}

bool genpop__Manager_enablePoll(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->EnablePoll(arg1);
}

bool genpop__Manager_enablePoll_(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->EnablePoll(arg1, arg2);
}

bool genpop__Manager_DisablePoll(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->DisablePoll(arg1);
}

bool genpop__Manager_isPolled(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->isPolled(arg1);
}

void genpop__Manager_SetPollIntensity(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char const arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
self->SetPollIntensity(arg1, arg2);
}

unsigned char genpop__Manager_GetPollIntensity(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetPollIntensity(arg1);
}

bool genpop__Manager_RefreshNodeInfo(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->RefreshNodeInfo(arg1, arg2);
}

bool genpop__Manager_RequestNodeState(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->RequestNodeState(arg1, arg2);
}

bool genpop__Manager_RequestNodeDynamic(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->RequestNodeDynamic(arg1, arg2);
}

bool genpop__Manager_IsNodeListeningDevice(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeListeningDevice(arg1, arg2);
}

bool genpop__Manager_IsNodeFrequentListeningDevice(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeFrequentListeningDevice(arg1, arg2);
}

bool genpop__Manager_IsNodeBeamingDevice(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeBeamingDevice(arg1, arg2);
}

bool genpop__Manager_IsNodeRoutingDevice(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeRoutingDevice(arg1, arg2);
}

bool genpop__Manager_IsNodeSecurityDevice(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeSecurityDevice(arg1, arg2);
}

unsigned int genpop__Manager_GetNodeMaxBaudRate(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeMaxBaudRate(arg1, arg2);
}

unsigned char genpop__Manager_GetNodeVersion(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeVersion(arg1, arg2);
}

unsigned char genpop__Manager_GetNodeSecurity(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeSecurity(arg1, arg2);
}

bool genpop__Manager_IsNodeZWavePlus(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeZWavePlus(arg1, arg2);
}

unsigned char genpop__Manager_GetNodeBasic(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeBasic(arg1, arg2);
}

unsigned char genpop__Manager_GetNodeGeneric(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeGeneric(arg1, arg2);
}

unsigned char genpop__Manager_GetNodeSpecific(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeSpecific(arg1, arg2);
}

std::string const*genpop__Manager_GetNodeType(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeType(arg1, arg2));
}

unsigned int genpop__Manager_GetNodeNeighbors(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char**arg3) {
return self->GetNodeNeighbors(arg1, arg2, arg3);
}

std::string const*genpop__Manager_GetNodeManufacturerName(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeManufacturerName(arg1, arg2));
}

std::string const*genpop__Manager_GetNodeProductName(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeProductName(arg1, arg2));
}

std::string const*genpop__Manager_GetNodeName(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeName(arg1, arg2));
}

std::string const*genpop__Manager_GetNodeLocation(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeLocation(arg1, arg2));
}

std::string const*genpop__Manager_GetNodeManufacturerId(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeManufacturerId(arg1, arg2));
}

std::string const*genpop__Manager_GetNodeProductType(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeProductType(arg1, arg2));
}

std::string const*genpop__Manager_GetNodeProductId(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeProductId(arg1, arg2));
}

void genpop__Manager_SetNodeManufacturerName(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, std::string const*arg3_) {
std::string const&arg3 = *arg3_;
self->SetNodeManufacturerName(arg1, arg2, arg3);
}

void genpop__Manager_SetNodeProductName(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, std::string const*arg3_) {
std::string const&arg3 = *arg3_;
self->SetNodeProductName(arg1, arg2, arg3);
}

void genpop__Manager_SetNodeName(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, std::string const*arg3_) {
std::string const&arg3 = *arg3_;
self->SetNodeName(arg1, arg2, arg3);
}

void genpop__Manager_SetNodeLocation(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, std::string const*arg3_) {
std::string const&arg3 = *arg3_;
self->SetNodeLocation(arg1, arg2, arg3);
}

void genpop__Manager_SetNodeOn(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
self->SetNodeOn(arg1, arg2);
}

void genpop__Manager_SetNodeOff(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
self->SetNodeOff(arg1, arg2);
}

void genpop__Manager_SetNodeLevel(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3) {
self->SetNodeLevel(arg1, arg2, arg3);
}

bool genpop__Manager_IsNodeInfoReceived(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeInfoReceived(arg1, arg2);
}

bool genpop__Manager_getNodeClassInformation(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3) {
return self->GetNodeClassInformation(arg1, arg2, arg3);
}

bool genpop__Manager_getNodeClassInformation_(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3, std::string*arg4, unsigned char*arg5) {
return self->GetNodeClassInformation(arg1, arg2, arg3, arg4, arg5);
}

bool genpop__Manager_IsNodeAwake(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeAwake(arg1, arg2);
}

bool genpop__Manager_IsNodeFailed(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->IsNodeFailed(arg1, arg2);
}

std::string const*genpop__Manager_GetNodeQueryStage(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeQueryStage(arg1, arg2));
}

unsigned short genpop__Manager_GetNodeDeviceType(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeDeviceType(arg1, arg2);
}

std::string const*genpop__Manager_GetNodeDeviceTypeString(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeDeviceTypeString(arg1, arg2));
}

unsigned char genpop__Manager_GetNodeRole(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodeRole(arg1, arg2);
}

std::string const*genpop__Manager_GetNodeRoleString(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodeRoleString(arg1, arg2));
}

unsigned char genpop__Manager_GetNodePlusType(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNodePlusType(arg1, arg2);
}

std::string const*genpop__Manager_GetNodePlusTypeString(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return new std::string(self->GetNodePlusTypeString(arg1, arg2));
}

std::string const*genpop__Manager_GetValueLabel(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return new std::string(self->GetValueLabel(arg1));
}

void genpop__Manager_SetValueLabel(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::string const*arg2_) {
OpenZWave::ValueID const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
self->SetValueLabel(arg1, arg2);
}

std::string const*genpop__Manager_GetValueUnits(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return new std::string(self->GetValueUnits(arg1));
}

void genpop__Manager_SetValueUnits(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::string const*arg2_) {
OpenZWave::ValueID const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
self->SetValueUnits(arg1, arg2);
}

std::string const*genpop__Manager_GetValueHelp(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return new std::string(self->GetValueHelp(arg1));
}

void genpop__Manager_SetValueHelp(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::string const*arg2_) {
OpenZWave::ValueID const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
self->SetValueHelp(arg1, arg2);
}

int genpop__Manager_GetValueMin(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueMin(arg1);
}

int genpop__Manager_GetValueMax(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueMax(arg1);
}

bool genpop__Manager_IsValueReadOnly(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->IsValueReadOnly(arg1);
}

bool genpop__Manager_IsValueWriteOnly(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->IsValueWriteOnly(arg1);
}

bool genpop__Manager_IsValueSet(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->IsValueSet(arg1);
}

bool genpop__Manager_IsValuePolled(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->IsValuePolled(arg1);
}

bool genpop__Manager_GetValueAsBool(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, bool*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueAsBool(arg1, arg2);
}

bool genpop__Manager_GetValueAsByte(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueAsByte(arg1, arg2);
}

bool genpop__Manager_GetValueAsFloat(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, float*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueAsFloat(arg1, arg2);
}

bool genpop__Manager_GetValueAsInt(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, int*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueAsInt(arg1, arg2);
}

bool genpop__Manager_GetValueAsShort(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, short*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueAsShort(arg1, arg2);
}

bool genpop__Manager_GetValueAsString(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::string*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueAsString(arg1, arg2);
}

bool genpop__Manager_GetValueAsRaw(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char**arg2, unsigned char*arg3) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueAsRaw(arg1, arg2, arg3);
}

bool genpop__Manager_GetValueListSelectionString(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::string*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueListSelection(arg1, arg2);
}

bool genpop__Manager_GetValueListSelection(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, int*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueListSelection(arg1, arg2);
}

bool genpop__Manager_GetValueListItems(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::vector<std::string>*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueListItems(arg1, arg2);
}

bool genpop__Manager_GetValueListValues(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::vector<int>*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueListValues(arg1, arg2);
}

bool genpop__Manager_GetValueFloatPrecision(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char*arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetValueFloatPrecision(arg1, arg2);
}

bool genpop__Manager_setBoolValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, bool const arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->SetValue(arg1, arg2);
}

bool genpop__Manager_setByteValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char const arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->SetValue(arg1, arg2);
}

bool genpop__Manager_setFloatValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, float const arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->SetValue(arg1, arg2);
}

bool genpop__Manager_setIntValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, int const arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->SetValue(arg1, arg2);
}

bool genpop__Manager_setShortValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, short const arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->SetValue(arg1, arg2);
}

bool genpop__Manager_setRawValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char const*arg2, unsigned char const arg3) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->SetValue(arg1, arg2, arg3);
}

bool genpop__Manager_SetStringValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::string const*arg2_) {
OpenZWave::ValueID const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return self->SetValue(arg1, arg2);
}

bool genpop__Manager_SetValueListSelection(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, std::string const*arg2_) {
OpenZWave::ValueID const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return self->SetValueListSelection(arg1, arg2);
}

bool genpop__Manager_RefreshValue(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->RefreshValue(arg1);
}

void genpop__Manager_SetChangeVerified(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, bool arg2) {
OpenZWave::ValueID const&arg1 = *arg1_;
self->SetChangeVerified(arg1, arg2);
}

bool genpop__Manager_GetChangeVerified(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetChangeVerified(arg1);
}

bool genpop__Manager_PressButton(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->PressButton(arg1);
}

bool genpop__Manager_ReleaseButton(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->ReleaseButton(arg1);
}

unsigned char genpop__Manager_GetNumSwitchPoints(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetNumSwitchPoints(arg1);
}

bool genpop__Manager_SetSwitchPoint(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char const arg2, unsigned char const arg3, char const arg4) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->SetSwitchPoint(arg1, arg2, arg3, arg4);
}

bool genpop__Manager_RemoveSwitchPoint(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char const arg2, unsigned char const arg3) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->RemoveSwitchPoint(arg1, arg2, arg3);
}

void genpop__Manager_ClearSwitchPoints(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
self->ClearSwitchPoints(arg1);
}

bool genpop__Manager_GetSwitchPoint(OpenZWave::Manager*self, OpenZWave::ValueID const*arg1_, unsigned char const arg2, unsigned char*arg3, unsigned char*arg4, int8_t*arg5) {
OpenZWave::ValueID const&arg1 = *arg1_;
return self->GetSwitchPoint(arg1, arg2, arg3, arg4, arg5);
}

void genpop__Manager_SwitchAllOn(OpenZWave::Manager*self, uint32_t const arg1) {
self->SwitchAllOn(arg1);
}

void genpop__Manager_SwitchAllOff(OpenZWave::Manager*self, uint32_t const arg1) {
self->SwitchAllOff(arg1);
}

bool genpop__Manager_setConfigParam_(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3, int arg4, unsigned char const arg5) {
return self->SetConfigParam(arg1, arg2, arg3, arg4, arg5);
}

bool genpop__Manager_setConfigParam(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3, int arg4) {
return self->SetConfigParam(arg1, arg2, arg3, arg4);
}

void genpop__Manager_RequestConfigParam(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3) {
self->RequestConfigParam(arg1, arg2, arg3);
}

void genpop__Manager_RequestAllConfigParams(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
self->RequestAllConfigParams(arg1, arg2);
}

unsigned char genpop__Manager_GetNumGroups(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->GetNumGroups(arg1, arg2);
}

unsigned int genpop__Manager_getAssociations_(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3, unsigned char**arg4) {
return self->GetAssociations(arg1, arg2, arg3, arg4);
}

unsigned char genpop__Manager_GetMaxAssociations(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3) {
return self->GetMaxAssociations(arg1, arg2, arg3);
}

std::string const*genpop__Manager_GetGroupLabel(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3) {
return new std::string(self->GetGroupLabel(arg1, arg2, arg3));
}

void genpop__Manager_AddAssociation(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3, unsigned char const arg4, unsigned char const arg5) {
self->AddAssociation(arg1, arg2, arg3, arg4, arg5);
}

void genpop__Manager_RemoveAssociation(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3, unsigned char const arg4, unsigned char const arg5) {
self->RemoveAssociation(arg1, arg2, arg3, arg4, arg5);
}

bool genpop__Manager_AddWatcher(OpenZWave::Manager*self, void(*arg1)(OpenZWave::Notification const*, void*), void*arg2) {
return self->AddWatcher(arg1, arg2);
}

bool genpop__Manager_RemoveWatcher(OpenZWave::Manager*self, void(*arg1)(OpenZWave::Notification const*, void*), void*arg2) {
return self->RemoveWatcher(arg1, arg2);
}

void genpop__Manager_ResetController(OpenZWave::Manager*self, uint32_t const arg1) {
self->ResetController(arg1);
}

void genpop__Manager_SoftReset(OpenZWave::Manager*self, uint32_t const arg1) {
self->SoftReset(arg1);
}

bool genpop__Manager_CancelControllerCommand(OpenZWave::Manager*self, uint32_t const arg1) {
return self->CancelControllerCommand(arg1);
}

void genpop__Manager_TestNetworkNode(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned int const arg3) {
self->TestNetworkNode(arg1, arg2, arg3);
}

void genpop__Manager_TestNetwork(OpenZWave::Manager*self, uint32_t const arg1, unsigned int const arg2) {
self->TestNetwork(arg1, arg2);
}

void genpop__Manager_HealNetworkNode(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, bool arg3) {
self->HealNetworkNode(arg1, arg2, arg3);
}

void genpop__Manager_HealNetwork(OpenZWave::Manager*self, uint32_t const arg1, bool arg2) {
self->HealNetwork(arg1, arg2);
}

bool genpop__Manager_AddNode(OpenZWave::Manager*self, uint32_t const arg1, bool arg2) {
return self->AddNode(arg1, arg2);
}

bool genpop__Manager_RemoveNode(OpenZWave::Manager*self, uint32_t const arg1) {
return self->RemoveNode(arg1);
}

bool genpop__Manager_RemoveFailedNode(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->RemoveFailedNode(arg1, arg2);
}

bool genpop__Manager_HasNodeFailed(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->HasNodeFailed(arg1, arg2);
}

bool genpop__Manager_RequestNodeNeighborUpdate(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->RequestNodeNeighborUpdate(arg1, arg2);
}

bool genpop__Manager_AssignReturnRoute(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->AssignReturnRoute(arg1, arg2);
}

bool genpop__Manager_DeleteAllReturnRoutes(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->DeleteAllReturnRoutes(arg1, arg2);
}

bool genpop__Manager_SendNodeInformation(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->SendNodeInformation(arg1, arg2);
}

bool genpop__Manager_CreateNewPrimary(OpenZWave::Manager*self, uint32_t const arg1) {
return self->CreateNewPrimary(arg1);
}

bool genpop__Manager_ReceiveConfiguration(OpenZWave::Manager*self, uint32_t const arg1) {
return self->ReceiveConfiguration(arg1);
}

bool genpop__Manager_ReplaceFailedNode(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->ReplaceFailedNode(arg1, arg2);
}

bool genpop__Manager_TransferPrimaryRole(OpenZWave::Manager*self, uint32_t const arg1) {
return self->TransferPrimaryRole(arg1);
}

bool genpop__Manager_RequestNetworkUpdate(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->RequestNetworkUpdate(arg1, arg2);
}

bool genpop__Manager_ReplicationSend(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2) {
return self->ReplicationSend(arg1, arg2);
}

bool genpop__Manager_CreateButton(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3) {
return self->CreateButton(arg1, arg2, arg3);
}

bool genpop__Manager_DeleteButton(OpenZWave::Manager*self, uint32_t const arg1, unsigned char const arg2, unsigned char const arg3) {
return self->DeleteButton(arg1, arg2, arg3);
}

unsigned char genpop__Manager_GetNumScenes(OpenZWave::Manager*self) {
return self->GetNumScenes();
}

unsigned char genpop__Manager_GetAllScenes(OpenZWave::Manager*self, unsigned char**arg1) {
return self->GetAllScenes(arg1);
}

void genpop__Manager_RemoveAllScenes(OpenZWave::Manager*self, uint32_t const arg1) {
self->RemoveAllScenes(arg1);
}

unsigned char genpop__Manager_CreateScene(OpenZWave::Manager*self) {
return self->CreateScene();
}

bool genpop__Manager_RemoveScene(OpenZWave::Manager*self, unsigned char const arg1) {
return self->RemoveScene(arg1);
}

bool genpop__Manager_addSceneBoolValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, bool const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->AddSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_addSceneByteValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, unsigned char const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->AddSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_addSceneFloatValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, float const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->AddSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_addSceneIntValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, int const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->AddSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_addSceneShortValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, short const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->AddSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_addSceneStringValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, std::string const*arg3_) {
OpenZWave::ValueID const&arg2 = *arg2_;
std::string const&arg3 = *arg3_;
return self->AddSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_addSceneValueListSelectionString(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, std::string const*arg3_) {
OpenZWave::ValueID const&arg2 = *arg2_;
std::string const&arg3 = *arg3_;
return self->AddSceneValueListSelection(arg1, arg2, arg3);
}

bool genpop__Manager_addSceneValueListSelectionBool(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, int const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->AddSceneValueListSelection(arg1, arg2, arg3);
}

bool genpop__Manager_RemoveSceneValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->RemoveSceneValue(arg1, arg2);
}

int genpop__Manager_SceneGetValues(OpenZWave::Manager*self, unsigned char const arg1, std::vector<OpenZWave::ValueID>*arg2) {
return self->SceneGetValues(arg1, arg2);
}

bool genpop__Manager_SceneGetValueAsBool(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, bool*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueAsBool(arg1, arg2, arg3);
}

bool genpop__Manager_SceneGetValueAsByte(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, unsigned char*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueAsByte(arg1, arg2, arg3);
}

bool genpop__Manager_SceneGetValueAsFloat(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, float*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueAsFloat(arg1, arg2, arg3);
}

bool genpop__Manager_SceneGetValueAsInt(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, int*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueAsInt(arg1, arg2, arg3);
}

bool genpop__Manager_SceneGetValueAsShort(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, short*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueAsShort(arg1, arg2, arg3);
}

bool genpop__Manager_SceneGetValueAsString(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, std::string*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueAsString(arg1, arg2, arg3);
}

bool genpop__Manager_sceneGetValueListSelectionAsString(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, std::string*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueListSelection(arg1, arg2, arg3);
}

bool genpop__Manager_sceneGetValueListSelectionAsInt(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, int*arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SceneGetValueListSelection(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneBoolValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, bool const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SetSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneByteValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, unsigned char const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SetSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneFloatValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, float const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SetSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneIntValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, int const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SetSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneShortValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, short const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SetSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneStringValue(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, std::string const*arg3_) {
OpenZWave::ValueID const&arg2 = *arg2_;
std::string const&arg3 = *arg3_;
return self->SetSceneValue(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneValueListSelectionAsString(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, std::string const*arg3_) {
OpenZWave::ValueID const&arg2 = *arg2_;
std::string const&arg3 = *arg3_;
return self->SetSceneValueListSelection(arg1, arg2, arg3);
}

bool genpop__Manager_setSceneValueListSelectionAsInt(OpenZWave::Manager*self, unsigned char const arg1, OpenZWave::ValueID const*arg2_, int const arg3) {
OpenZWave::ValueID const&arg2 = *arg2_;
return self->SetSceneValueListSelection(arg1, arg2, arg3);
}

std::string const*genpop__Manager_GetSceneLabel(OpenZWave::Manager*self, unsigned char const arg1) {
return new std::string(self->GetSceneLabel(arg1));
}

void genpop__Manager_SetSceneLabel(OpenZWave::Manager*self, unsigned char const arg1, std::string const*arg2_) {
std::string const&arg2 = *arg2_;
self->SetSceneLabel(arg1, arg2);
}

bool genpop__Manager_SceneExists(OpenZWave::Manager*self, unsigned char const arg1) {
return self->SceneExists(arg1);
}

bool genpop__Manager_ActivateScene(OpenZWave::Manager*self, unsigned char const arg1) {
return self->ActivateScene(arg1);
}

OpenZWave::Notification::NotificationType genpop__Notification_GetType(OpenZWave::Notification*self) {
return self->GetType();
}

uint32_t genpop__Notification_GetHomeId(OpenZWave::Notification*self) {
return self->GetHomeId();
}

unsigned char genpop__Notification_GetNodeId(OpenZWave::Notification*self) {
return self->GetNodeId();
}

OpenZWave::ValueID const*genpop__Notification_GetValueID(OpenZWave::Notification*self) {
return &(self->GetValueID());
}

unsigned char genpop__Notification_GetGroupIdx(OpenZWave::Notification*self) {
return self->GetGroupIdx();
}

unsigned char genpop__Notification_GetEvent(OpenZWave::Notification*self) {
return self->GetEvent();
}

unsigned char genpop__Notification_GetButtonId(OpenZWave::Notification*self) {
return self->GetButtonId();
}

unsigned char genpop__Notification_GetSceneId(OpenZWave::Notification*self) {
return self->GetSceneId();
}

unsigned char genpop__Notification_GetByte(OpenZWave::Notification*self) {
return self->GetByte();
}

std::string const*genpop__Notification_GetAsString(OpenZWave::Notification*self) {
return new std::string(self->GetAsString());
}

OpenZWave::Options*genpop__Options_Create(std::string const*arg1_, std::string const*arg2_, std::string const*arg3_) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
std::string const&arg3 = *arg3_;
return OpenZWave::Options::Create(arg1, arg2, arg3);
}

bool genpop__Options_Destroy() {
return OpenZWave::Options::Destroy();
}

OpenZWave::Options*genpop__Options_Get() {
return OpenZWave::Options::Get();
}

bool genpop__Options_Lock(OpenZWave::Options*self) {
return self->Lock();
}

bool genpop__Options_AddOptionBool(OpenZWave::Options*self, std::string const*arg1_, bool const arg2) {
std::string const&arg1 = *arg1_;
return self->AddOptionBool(arg1, arg2);
}

bool genpop__Options_AddOptionInt(OpenZWave::Options*self, std::string const*arg1_, int const arg2) {
std::string const&arg1 = *arg1_;
return self->AddOptionInt(arg1, arg2);
}

bool genpop__Options_AddOptionString(OpenZWave::Options*self, std::string const*arg1_, std::string const*arg2_, bool const arg3) {
std::string const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return self->AddOptionString(arg1, arg2, arg3);
}

bool genpop__Options_GetOptionAsBool(OpenZWave::Options*self, std::string const*arg1_, bool*arg2) {
std::string const&arg1 = *arg1_;
return self->GetOptionAsBool(arg1, arg2);
}

bool genpop__Options_GetOptionAsInt(OpenZWave::Options*self, std::string const*arg1_, int*arg2) {
std::string const&arg1 = *arg1_;
return self->GetOptionAsInt(arg1, arg2);
}

bool genpop__Options_GetOptionAsString(OpenZWave::Options*self, std::string const*arg1_, std::string*arg2) {
std::string const&arg1 = *arg1_;
return self->GetOptionAsString(arg1, arg2);
}

OpenZWave::Options::OptionType genpop__Options_GetOptionType(OpenZWave::Options*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
return self->GetOptionType(arg1);
}

bool genpop__Options_AreLocked(OpenZWave::Options*self) {
return self->AreLocked();
}

std::vector<std::string>*genpop__StringVector_new() {
return new std::vector<std::string>();
}

std::vector<std::string>*genpop__StringVector_newCopy(std::vector<std::string>const*arg1_) {
std::vector<std::string>const&arg1 = *arg1_;
return new std::vector<std::string>(arg1);
}

void gendel__StringVector(std::vector<std::string>const*self) {
delete self;
}

std::string*genpop__StringVector_at(std::vector<std::string>*self, size_t arg1) {
return &(self->at(arg1));
}

std::string const*genpop__StringVector_atConst(std::vector<std::string>*self, size_t arg1) {
return &(self->at(arg1));
}

std::string*genpop__StringVector_back(std::vector<std::string>*self) {
return &(self->back());
}

std::string const*genpop__StringVector_backConst(std::vector<std::string>*self) {
return &(self->back());
}

std::vector<std::string>::iterator*genpop__StringVector_begin(std::vector<std::string>*self) {
return new std::vector<std::string>::iterator(self->begin());
}

std::vector<std::string>::const_iterator*genpop__StringVector_beginConst(std::vector<std::string>*self) {
return new std::vector<std::string>::const_iterator(self->begin());
}

size_t genpop__StringVector_capacity(std::vector<std::string>*self) {
return self->capacity();
}

void genpop__StringVector_clear(std::vector<std::string>*self) {
self->clear();
}

bool genpop__StringVector_empty(std::vector<std::string>*self) {
return self->empty();
}

std::vector<std::string>::iterator*genpop__StringVector_end(std::vector<std::string>*self) {
return new std::vector<std::string>::iterator(self->end());
}

std::vector<std::string>::const_iterator*genpop__StringVector_endConst(std::vector<std::string>*self) {
return new std::vector<std::string>::const_iterator(self->end());
}

void genpop__StringVector_erase(std::vector<std::string>*self, std::vector<std::string>::iterator const*arg1_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
self->erase(arg1);
}

void genpop__StringVector_eraseRange(std::vector<std::string>*self, std::vector<std::string>::iterator const*arg1_, std::vector<std::string>::iterator const*arg2_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
std::vector<std::string>::iterator const&arg2 = *arg2_;
self->erase(arg1, arg2);
}

std::string*genpop__StringVector_front(std::vector<std::string>*self) {
return &(self->front());
}

std::string const*genpop__StringVector_frontConst(std::vector<std::string>*self) {
return &(self->front());
}

std::vector<std::string>::iterator*genpop__StringVector_insert(std::vector<std::string>*self, std::vector<std::string>::iterator const*arg1_, std::string const*arg2_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
std::string const&arg2 = *arg2_;
return new std::vector<std::string>::iterator(self->insert(arg1, arg2));
}

size_t genpop__StringVector_maxSize(std::vector<std::string>*self) {
return self->max_size();
}

void genpop__StringVector_popBack(std::vector<std::string>*self) {
self->pop_back();
}

void genpop__StringVector_pushBack(std::vector<std::string>*self, std::string const*arg1_) {
std::string const&arg1 = *arg1_;
self->push_back(arg1);
}

void genpop__StringVector_reserve(std::vector<std::string>*self, size_t arg1) {
self->reserve(arg1);
}

void genpop__StringVector_resize(std::vector<std::string>*self, size_t arg1) {
self->resize(arg1);
}

void genpop__StringVector_resizeWith(std::vector<std::string>*self, size_t arg1, std::string const*arg2_) {
std::string const&arg2 = *arg2_;
self->resize(arg1, arg2);
}

void genpop__StringVector_shrinkToFit(std::vector<std::string>*self) {
self->shrink_to_fit();
}

size_t genpop__StringVector_size(std::vector<std::string>*self) {
return self->size();
}

void genpop__StringVector_swap(std::vector<std::string>*self, std::vector<std::string>*arg1_) {
std::vector<std::string>&arg1 = *arg1_;
self->swap(arg1);
}

std::vector<std::string>*genpop__StringVector_ASSIGN(std::vector<std::string>*self, std::vector<std::string>const*arg1_) {
std::vector<std::string>const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_newFromNonconst(std::vector<std::string>::iterator const*arg1_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
return new std::vector<std::string>::const_iterator(arg1);
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_new() {
return new std::vector<std::string>::const_iterator();
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_newCopy(std::vector<std::string>::const_iterator const*arg1_) {
std::vector<std::string>::const_iterator const&arg1 = *arg1_;
return new std::vector<std::string>::const_iterator(arg1);
}

void gendel__StringVectorConstIterator(std::vector<std::string>::const_iterator const*self) {
delete self;
}

std::vector<std::string>::iterator*genpop__StringVectorConstIterator_deconst(std::vector<std::string>::const_iterator const*arg1_, std::vector<std::string>*arg2_) {
std::vector<std::string>::const_iterator const&arg1 = *arg1_;
std::vector<std::string>&arg2 = *arg2_;
return new std::vector<std::string>::iterator(hoppy::iterator::deconst(arg1, arg2));
}

std::string const*genpop__StringVectorConstIterator_getConst(std::vector<std::string>::const_iterator*self) {
return &((*(*self)));
}

bool genpop__StringVectorConstIterator_EQ(std::vector<std::string>::const_iterator*self, std::vector<std::string>::const_iterator const*arg1_) {
std::vector<std::string>::const_iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__StringVectorConstIterator_NE(std::vector<std::string>::const_iterator*self, std::vector<std::string>::const_iterator const*arg1_) {
std::vector<std::string>::const_iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_ASSIGN(std::vector<std::string>::const_iterator*self, std::vector<std::string>::const_iterator const*arg1_) {
std::vector<std::string>::const_iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_next(std::vector<std::string>::const_iterator*self) {
return &((++(*self)));
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_prev(std::vector<std::string>::const_iterator*self) {
return &((--(*self)));
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_plus(std::vector<std::string>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<std::string>::const_iterator(((*self)+arg1));
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_add(std::vector<std::string>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_minus(std::vector<std::string>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<std::string>::const_iterator(((*self)-arg1));
}

ptrdiff_t genpop__StringVectorConstIterator_difference(std::vector<std::string>::const_iterator*self, std::vector<std::string>::const_iterator const*arg1_) {
std::vector<std::string>::const_iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<std::string>::const_iterator*genpop__StringVectorConstIterator_subtract(std::vector<std::string>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

std::string const*genpop__StringVectorConstIterator_atConst(std::vector<std::string>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_new() {
return new std::vector<std::string>::iterator();
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_newCopy(std::vector<std::string>::iterator const*arg1_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
return new std::vector<std::string>::iterator(arg1);
}

void gendel__StringVectorIterator(std::vector<std::string>::iterator const*self) {
delete self;
}

std::string*genpop__StringVectorIterator_get(std::vector<std::string>::iterator*self) {
return &((*(*self)));
}

std::string const*genpop__StringVectorIterator_getConst(std::vector<std::string>::iterator*self) {
return &((*(*self)));
}

void genpop__StringVectorIterator_put(std::vector<std::string>::iterator*arg1, std::string const*arg2_) {
std::string const&arg2 = *arg2_;
hoppy::iterator::put(arg1, arg2);
}

bool genpop__StringVectorIterator_EQ(std::vector<std::string>::iterator*self, std::vector<std::string>::iterator const*arg1_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__StringVectorIterator_NE(std::vector<std::string>::iterator*self, std::vector<std::string>::iterator const*arg1_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_ASSIGN(std::vector<std::string>::iterator*self, std::vector<std::string>::iterator const*arg1_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_next(std::vector<std::string>::iterator*self) {
return &((++(*self)));
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_prev(std::vector<std::string>::iterator*self) {
return &((--(*self)));
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_plus(std::vector<std::string>::iterator*self, ptrdiff_t arg1) {
return new std::vector<std::string>::iterator(((*self)+arg1));
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_add(std::vector<std::string>::iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_minus(std::vector<std::string>::iterator*self, ptrdiff_t arg1) {
return new std::vector<std::string>::iterator(((*self)-arg1));
}

ptrdiff_t genpop__StringVectorIterator_difference(std::vector<std::string>::iterator*self, std::vector<std::string>::iterator const*arg1_) {
std::vector<std::string>::iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<std::string>::iterator*genpop__StringVectorIterator_subtract(std::vector<std::string>::iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

std::string*genpop__StringVectorIterator_at(std::vector<std::string>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

std::string const*genpop__StringVectorIterator_atConst(std::vector<std::string>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

OpenZWave::ValueID*genpop__ValueID_new(unsigned int const arg1, unsigned char const arg2, OpenZWave::ValueID::ValueGenre const arg3, unsigned char const arg4, unsigned char const arg5, unsigned char const arg6, OpenZWave::ValueID::ValueType const arg7) {
return new OpenZWave::ValueID(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

OpenZWave::ValueID*genpop__ValueID_unpack(uint32_t arg1, unsigned long long arg2) {
return new OpenZWave::ValueID(arg1, arg2);
}

void gendel__ValueID(OpenZWave::ValueID const*self) {
delete self;
}

uint32_t genpop__ValueID_GetHomeId(OpenZWave::ValueID*self) {
return self->GetHomeId();
}

unsigned char genpop__ValueID_GetNodeId(OpenZWave::ValueID*self) {
return self->GetNodeId();
}

OpenZWave::ValueID::ValueGenre genpop__ValueID_GetGenre(OpenZWave::ValueID*self) {
return self->GetGenre();
}

unsigned char genpop__ValueID_GetCommandClassId(OpenZWave::ValueID*self) {
return self->GetCommandClassId();
}

unsigned char genpop__ValueID_GetInstance(OpenZWave::ValueID*self) {
return self->GetInstance();
}

unsigned char genpop__ValueID_GetIndex(OpenZWave::ValueID*self) {
return self->GetIndex();
}

OpenZWave::ValueID::ValueType genpop__ValueID_GetType(OpenZWave::ValueID*self) {
return self->GetType();
}

unsigned long long genpop__ValueID_GetId(OpenZWave::ValueID*self) {
return self->GetId();
}

bool genpop__ValueID_EQ(OpenZWave::ValueID*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__ValueID_NE(OpenZWave::ValueID*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<OpenZWave::ValueID>*genpop__ValueIDVector_new() {
return new std::vector<OpenZWave::ValueID>();
}

std::vector<OpenZWave::ValueID>*genpop__ValueIDVector_newCopy(std::vector<OpenZWave::ValueID>const*arg1_) {
std::vector<OpenZWave::ValueID>const&arg1 = *arg1_;
return new std::vector<OpenZWave::ValueID>(arg1);
}

void gendel__ValueIDVector(std::vector<OpenZWave::ValueID>const*self) {
delete self;
}

OpenZWave::ValueID*genpop__ValueIDVector_at(std::vector<OpenZWave::ValueID>*self, size_t arg1) {
return &(self->at(arg1));
}

OpenZWave::ValueID const*genpop__ValueIDVector_atConst(std::vector<OpenZWave::ValueID>*self, size_t arg1) {
return &(self->at(arg1));
}

OpenZWave::ValueID*genpop__ValueIDVector_back(std::vector<OpenZWave::ValueID>*self) {
return &(self->back());
}

OpenZWave::ValueID const*genpop__ValueIDVector_backConst(std::vector<OpenZWave::ValueID>*self) {
return &(self->back());
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVector_begin(std::vector<OpenZWave::ValueID>*self) {
return new std::vector<OpenZWave::ValueID>::iterator(self->begin());
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVector_beginConst(std::vector<OpenZWave::ValueID>*self) {
return new std::vector<OpenZWave::ValueID>::const_iterator(self->begin());
}

size_t genpop__ValueIDVector_capacity(std::vector<OpenZWave::ValueID>*self) {
return self->capacity();
}

void genpop__ValueIDVector_clear(std::vector<OpenZWave::ValueID>*self) {
self->clear();
}

bool genpop__ValueIDVector_empty(std::vector<OpenZWave::ValueID>*self) {
return self->empty();
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVector_end(std::vector<OpenZWave::ValueID>*self) {
return new std::vector<OpenZWave::ValueID>::iterator(self->end());
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVector_endConst(std::vector<OpenZWave::ValueID>*self) {
return new std::vector<OpenZWave::ValueID>::const_iterator(self->end());
}

void genpop__ValueIDVector_erase(std::vector<OpenZWave::ValueID>*self, std::vector<OpenZWave::ValueID>::iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
self->erase(arg1);
}

void genpop__ValueIDVector_eraseRange(std::vector<OpenZWave::ValueID>*self, std::vector<OpenZWave::ValueID>::iterator const*arg1_, std::vector<OpenZWave::ValueID>::iterator const*arg2_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
std::vector<OpenZWave::ValueID>::iterator const&arg2 = *arg2_;
self->erase(arg1, arg2);
}

OpenZWave::ValueID*genpop__ValueIDVector_front(std::vector<OpenZWave::ValueID>*self) {
return &(self->front());
}

OpenZWave::ValueID const*genpop__ValueIDVector_frontConst(std::vector<OpenZWave::ValueID>*self) {
return &(self->front());
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVector_insert(std::vector<OpenZWave::ValueID>*self, std::vector<OpenZWave::ValueID>::iterator const*arg1_, OpenZWave::ValueID const*arg2_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
OpenZWave::ValueID const&arg2 = *arg2_;
return new std::vector<OpenZWave::ValueID>::iterator(self->insert(arg1, arg2));
}

size_t genpop__ValueIDVector_maxSize(std::vector<OpenZWave::ValueID>*self) {
return self->max_size();
}

void genpop__ValueIDVector_popBack(std::vector<OpenZWave::ValueID>*self) {
self->pop_back();
}

void genpop__ValueIDVector_pushBack(std::vector<OpenZWave::ValueID>*self, OpenZWave::ValueID const*arg1_) {
OpenZWave::ValueID const&arg1 = *arg1_;
self->push_back(arg1);
}

void genpop__ValueIDVector_reserve(std::vector<OpenZWave::ValueID>*self, size_t arg1) {
self->reserve(arg1);
}

void genpop__ValueIDVector_resizeWith(std::vector<OpenZWave::ValueID>*self, size_t arg1, OpenZWave::ValueID const*arg2_) {
OpenZWave::ValueID const&arg2 = *arg2_;
self->resize(arg1, arg2);
}

void genpop__ValueIDVector_shrinkToFit(std::vector<OpenZWave::ValueID>*self) {
self->shrink_to_fit();
}

size_t genpop__ValueIDVector_size(std::vector<OpenZWave::ValueID>*self) {
return self->size();
}

void genpop__ValueIDVector_swap(std::vector<OpenZWave::ValueID>*self, std::vector<OpenZWave::ValueID>*arg1_) {
std::vector<OpenZWave::ValueID>&arg1 = *arg1_;
self->swap(arg1);
}

std::vector<OpenZWave::ValueID>*genpop__ValueIDVector_ASSIGN(std::vector<OpenZWave::ValueID>*self, std::vector<OpenZWave::ValueID>const*arg1_) {
std::vector<OpenZWave::ValueID>const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_newFromNonconst(std::vector<OpenZWave::ValueID>::iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
return new std::vector<OpenZWave::ValueID>::const_iterator(arg1);
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_new() {
return new std::vector<OpenZWave::ValueID>::const_iterator();
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_newCopy(std::vector<OpenZWave::ValueID>::const_iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::const_iterator const&arg1 = *arg1_;
return new std::vector<OpenZWave::ValueID>::const_iterator(arg1);
}

void gendel__ValueIDVectorConstIterator(std::vector<OpenZWave::ValueID>::const_iterator const*self) {
delete self;
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorConstIterator_deconst(std::vector<OpenZWave::ValueID>::const_iterator const*arg1_, std::vector<OpenZWave::ValueID>*arg2_) {
std::vector<OpenZWave::ValueID>::const_iterator const&arg1 = *arg1_;
std::vector<OpenZWave::ValueID>&arg2 = *arg2_;
return new std::vector<OpenZWave::ValueID>::iterator(hoppy::iterator::deconst(arg1, arg2));
}

OpenZWave::ValueID const*genpop__ValueIDVectorConstIterator_getConst(std::vector<OpenZWave::ValueID>::const_iterator*self) {
return &((*(*self)));
}

bool genpop__ValueIDVectorConstIterator_EQ(std::vector<OpenZWave::ValueID>::const_iterator*self, std::vector<OpenZWave::ValueID>::const_iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::const_iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__ValueIDVectorConstIterator_NE(std::vector<OpenZWave::ValueID>::const_iterator*self, std::vector<OpenZWave::ValueID>::const_iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::const_iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_ASSIGN(std::vector<OpenZWave::ValueID>::const_iterator*self, std::vector<OpenZWave::ValueID>::const_iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::const_iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_next(std::vector<OpenZWave::ValueID>::const_iterator*self) {
return &((++(*self)));
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_prev(std::vector<OpenZWave::ValueID>::const_iterator*self) {
return &((--(*self)));
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_plus(std::vector<OpenZWave::ValueID>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<OpenZWave::ValueID>::const_iterator(((*self)+arg1));
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_add(std::vector<OpenZWave::ValueID>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_minus(std::vector<OpenZWave::ValueID>::const_iterator*self, ptrdiff_t arg1) {
return new std::vector<OpenZWave::ValueID>::const_iterator(((*self)-arg1));
}

ptrdiff_t genpop__ValueIDVectorConstIterator_difference(std::vector<OpenZWave::ValueID>::const_iterator*self, std::vector<OpenZWave::ValueID>::const_iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::const_iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<OpenZWave::ValueID>::const_iterator*genpop__ValueIDVectorConstIterator_subtract(std::vector<OpenZWave::ValueID>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

OpenZWave::ValueID const*genpop__ValueIDVectorConstIterator_atConst(std::vector<OpenZWave::ValueID>::const_iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_new() {
return new std::vector<OpenZWave::ValueID>::iterator();
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_newCopy(std::vector<OpenZWave::ValueID>::iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
return new std::vector<OpenZWave::ValueID>::iterator(arg1);
}

void gendel__ValueIDVectorIterator(std::vector<OpenZWave::ValueID>::iterator const*self) {
delete self;
}

OpenZWave::ValueID*genpop__ValueIDVectorIterator_get(std::vector<OpenZWave::ValueID>::iterator*self) {
return &((*(*self)));
}

OpenZWave::ValueID const*genpop__ValueIDVectorIterator_getConst(std::vector<OpenZWave::ValueID>::iterator*self) {
return &((*(*self)));
}

void genpop__ValueIDVectorIterator_put(std::vector<OpenZWave::ValueID>::iterator*arg1, OpenZWave::ValueID const*arg2_) {
OpenZWave::ValueID const&arg2 = *arg2_;
hoppy::iterator::put(arg1, arg2);
}

bool genpop__ValueIDVectorIterator_EQ(std::vector<OpenZWave::ValueID>::iterator*self, std::vector<OpenZWave::ValueID>::iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
return ((*self)==arg1);
}

bool genpop__ValueIDVectorIterator_NE(std::vector<OpenZWave::ValueID>::iterator*self, std::vector<OpenZWave::ValueID>::iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
return ((*self)!=arg1);
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_ASSIGN(std::vector<OpenZWave::ValueID>::iterator*self, std::vector<OpenZWave::ValueID>::iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
return &(((*self)=arg1));
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_next(std::vector<OpenZWave::ValueID>::iterator*self) {
return &((++(*self)));
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_prev(std::vector<OpenZWave::ValueID>::iterator*self) {
return &((--(*self)));
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_plus(std::vector<OpenZWave::ValueID>::iterator*self, ptrdiff_t arg1) {
return new std::vector<OpenZWave::ValueID>::iterator(((*self)+arg1));
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_add(std::vector<OpenZWave::ValueID>::iterator*self, ptrdiff_t arg1) {
return &(((*self)+=arg1));
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_minus(std::vector<OpenZWave::ValueID>::iterator*self, ptrdiff_t arg1) {
return new std::vector<OpenZWave::ValueID>::iterator(((*self)-arg1));
}

ptrdiff_t genpop__ValueIDVectorIterator_difference(std::vector<OpenZWave::ValueID>::iterator*self, std::vector<OpenZWave::ValueID>::iterator const*arg1_) {
std::vector<OpenZWave::ValueID>::iterator const&arg1 = *arg1_;
return ((*self)-arg1);
}

std::vector<OpenZWave::ValueID>::iterator*genpop__ValueIDVectorIterator_subtract(std::vector<OpenZWave::ValueID>::iterator*self, ptrdiff_t arg1) {
return &(((*self)-=arg1));
}

OpenZWave::ValueID*genpop__ValueIDVectorIterator_at(std::vector<OpenZWave::ValueID>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

OpenZWave::ValueID const*genpop__ValueIDVectorIterator_atConst(std::vector<OpenZWave::ValueID>::iterator*self, ptrdiff_t arg1) {
return &(((*self)[arg1]));
}

}  // extern "C"
