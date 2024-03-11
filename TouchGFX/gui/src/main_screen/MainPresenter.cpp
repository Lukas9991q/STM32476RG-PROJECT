#include <gui/main_screen/MainView.hpp>
#include <gui/main_screen/MainPresenter.hpp>

MainPresenter::MainPresenter(MainView& v)
    : view(v)
{
}

void MainPresenter::activate()
{
}

void MainPresenter::deactivate()
{
}




void MainPresenter::setLight (bool state)
{
	view.setLight (state);
}

void MainPresenter::setADC (int val)
{
	view.setADC (val);
}
