#ifndef MAIN_VIEW_HPP
#define MAIN_VIEW_HPP

#include <gui_generated/main_screen/MainViewBase.hpp>
#include <gui/main_screen/MainPresenter.hpp>

class MainView : public MainViewBase
{
public:
    MainView();
    ~MainView() {};
    virtual void setupScreen();
    virtual void increaseValue();
    virtual void decreaseValue();



    virtual void setLight (bool state);
    virtual void setADC (int val);




    void updateGFXElements();
protected:

private:
    uint8_t count;
};

#endif // MAIN_VIEW_HPP
