#include <gui/main_screen/MainView.hpp>
#include "BitmapDatabase.hpp"

const uint8_t UPPER_LIMIT = 42;
const uint8_t LOWER_LIMIT = 0;


MainView::MainView() : count(0) {}

void MainView::setupScreen()
{
    updateGFXElements();
}

void MainView::increaseValue()
{
    count = (count++ > UPPER_LIMIT) ? UPPER_LIMIT : count;
    updateGFXElements();
}

void MainView::decreaseValue()
{
    count = (count-- <= LOWER_LIMIT) ? LOWER_LIMIT : count;
    updateGFXElements();
}

void MainView::updateGFXElements()
{
    //Counter text area GFX uptade.

}




void MainView::setLight (bool state)
{
	lightON.setVisible(state);
	lightON.invalidate();
}

void MainView::setADC (int val)
{
	Unicode::snprintf(textArea1Buffer, TEXTAREA1_SIZE, "%d", val);
	textArea1.invalidate();
}
