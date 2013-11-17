/*
 * Copyright 2013 Canonical Ltd.
 *
 * This file is part of webbrowser-app.
 *
 * webbrowser-app is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * webbrowser-app is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Ubuntu.Components 0.1

MainView {
    property bool chromeless: false
    property bool developerExtrasEnabled: false

    property var currentWebview: null
    property string title: currentWebview ? currentWebview.title : ""

    property bool backForwardButtonsVisible: true
    property bool activityButtonVisible: true
    property bool addressBarVisible: true

    property var webbrowserWindow: null

    property var osk: _osk

    automaticOrientation: true

    // XXX: not using this property yet since the MainView doesn’t provide
    // a way to know when the keyboard animation has finished (needed for
    // autopilot tests). See the KeyboardRectangle component.
    //anchorToKeyboard: true

    focus: true

    KeyboardRectangle {
        id: _osk
    }
}