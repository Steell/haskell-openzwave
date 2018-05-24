////////// GENERATED FILE, EDITS WILL BE LOST //////////

#ifndef HOPPY_MODULE_example_ozw
#define HOPPY_MODULE_example_ozw

#include <Notification.h>
#include <memory>

extern "C" {

class HaskellOnNotificationCallback_impl {
public:
    explicit HaskellOnNotificationCallback_impl(void(*)(OpenZWave::Notification const*, void*), void(*)(void(*)()), bool);
    ~HaskellOnNotificationCallback_impl();
    void operator()(OpenZWave::Notification const*, void*);
private:
    HaskellOnNotificationCallback_impl(const HaskellOnNotificationCallback_impl&);
    HaskellOnNotificationCallback_impl& operator=(const HaskellOnNotificationCallback_impl&);

    void(*const f_)(OpenZWave::Notification const*, void*);
    void (*const release_)(void(*)());
    const bool releaseRelease_;
};

class HaskellOnNotificationCallback {
public:
    HaskellOnNotificationCallback() {}
    explicit HaskellOnNotificationCallback(HaskellOnNotificationCallback_impl* impl) : impl_(impl) {}
    void operator()(OpenZWave::Notification const*, void*);
    operator bool() const;
private:
    std::shared_ptr<HaskellOnNotificationCallback_impl> impl_;
};

}  // extern "C"

#endif  // ifndef HOPPY_MODULE_example_ozw
