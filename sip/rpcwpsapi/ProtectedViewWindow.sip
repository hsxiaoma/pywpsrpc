/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct ProtectedViewWindow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR prop) = 0;

        virtual HRESULT get_Document(
            Document **prop /Out/) = 0;

        virtual HRESULT get_Left(
            long *prop /Out/) = 0;

        virtual HRESULT put_Left(
            long prop) = 0;

        virtual HRESULT get_Top(
            long *prop /Out/) = 0;

        virtual HRESULT put_Top(
            long prop) = 0;

        virtual HRESULT get_Width(
            long *prop /Out/) = 0;

        virtual HRESULT put_Width(
            long prop) = 0;

        virtual HRESULT get_Height(
            long *prop /Out/) = 0;

        virtual HRESULT put_Height(
            long prop) = 0;

        virtual HRESULT get_WindowState(
            WdWindowState *prop /Out/) = 0;

        virtual HRESULT put_WindowState(
            WdWindowState prop) = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SourceName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_SourcePath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Edit(
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT Close() = 0;

        virtual HRESULT ToggleRibbon() = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        BSTR getCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Caption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Caption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCaption(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Caption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Caption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Caption, get=getCaption, set=setCaption)

        Document* getDocument();
        %MethodCode
            wpsapi::Document *prop = nullptr;
            HRESULT hr = sipCpp->get_Document(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Document()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Document, get=getDocument)

        long getLeft();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

        long getTop();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        long getWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        long getHeight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        WdWindowState getWindowState();
        %MethodCode
            wpsapi::WdWindowState prop = (wpsapi::WdWindowState)0;
            HRESULT hr = sipCpp->get_WindowState(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WindowState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWindowState(WdWindowState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WindowState(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WindowState()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WindowState, get=getWindowState, set=setWindowState)

        VARIANT_BOOL getActive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Active(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Active()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Active, get=getActive)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        BSTR getSourceName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceName, get=getSourceName)

        BSTR getSourcePath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourcePath(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourcePath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourcePath, get=getSourcePath)
    };
};
