/**
 * Copyright (c) 2020-2021 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct CanvasShapes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        Py_ssize_t __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT *Index,
            Shape **prop /Out/) = 0;

        Shape* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::Shape *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT AddCallout(
            MsoCalloutType Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddConnector(
            MsoConnectorType Type,
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddCurve(
            VARIANT *SafeArrayOfPoints,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddLabel(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddPicture(
            BSTR FileName,
            VARIANT *LinkToFile = argMissing(),
            VARIANT *SaveWithDocument = argMissing(),
            VARIANT *Left = argMissing(),
            VARIANT *Top = argMissing(),
            VARIANT *Width = argMissing(),
            VARIANT *Height = argMissing(),
            Shape **prop /Out/ = 0) = 0;

        virtual HRESULT AddPolyline(
            VARIANT *SafeArrayOfPoints,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddShape(
            long Type,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddTextEffect(
            MsoPresetTextEffect PresetTextEffect,
            BSTR Text,
            BSTR FontName,
            single FontSize,
            MsoTriState FontBold,
            MsoTriState FontItalic,
            single Left,
            single Top,
            Shape **prop /Out/) = 0;

        virtual HRESULT AddTextbox(
            MsoTextOrientation Orientation,
            single Left,
            single Top,
            single Width,
            single Height,
            Shape **prop /Out/) = 0;

        virtual HRESULT BuildFreeform(
            MsoEditingType EditingType,
            single X1,
            single Y1,
            FreeformBuilder **prop /Out/) = 0;

        virtual HRESULT Range(
            VARIANT *Index,
            ShapeRange **prop /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

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

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

    };
};
