<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile doxygen_version="1.15.0">
  <compound kind="class">
    <name>Atk::Action</name>
    <filename>classAtk_1_1Action.html</filename>
    <member kind="function">
      <type></type>
      <name>Action</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a87a439e94f0fa5e4b0d415c2fd74399c</anchor>
      <arglist>(Action &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Action &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>aa06138903460c268b2482340b956b681</anchor>
      <arglist>(Action &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Action</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>aa349416302cf9826f2f5e017cb29b67f</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkAction *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>adb3d447d2205946e07830483ad659a16</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkAction *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a9550617045e96eebaedfbd049ae74256</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>do_action</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a41aa7ecc13346d8f9a826d9d9cf88a57</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_actions</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a1f9658e7b05e7692be9f5342d66f198a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_description</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>aaf1bd0979aaa968ca3e06e1407193aa3</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_name</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a3deb64744279c101e34d1ac4da9682e7</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_keybinding</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a4acdb52d10250f647be0c063cf21293f</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_description</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>af157b00d0904b8dfde07048ec7980c77</anchor>
      <arglist>(int i, const Glib::ustring &amp;desc)</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_localized_name</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a346497af2820bd9d0db1c2944ac779cf</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a2e7470667a8a5a98a1a199111e80bc35</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a02c3cea2ff08a6c1eeeedef35af32513</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Action</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>ac4e11558ec7198e7b57f6866cd7a750b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>do_action_vfunc</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a13d4c4e640ce5583e806f0d9dcefd437</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_n_actions_vfunc</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a191f1250c5c3d4cf894c14b01eb29d65</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const char *</type>
      <name>get_description_vfunc</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>aff1b84722c0fd4f6ccefb6ed0a54483c</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const char *</type>
      <name>get_name_vfunc</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a6eba68660ca988d055d6a1cbf100666f</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const char *</type>
      <name>get_keybinding_vfunc</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a935b0778aee820da75af6de5675166fb</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_description_vfunc</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a94c613c958a84eac9610ca84bc78d0be</anchor>
      <arglist>(int i, const Glib::ustring &amp;desc)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Action &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Action.html</anchorfile>
      <anchor>a7fec8f013e04cd52a8bb16a68ce3b6ff</anchor>
      <arglist>(AtkAction *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Attribute</name>
    <filename>classAtk_1_1Attribute.html</filename>
    <member kind="function">
      <type></type>
      <name>Attribute</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a043d21fa0123a7152130da5cb85cd12a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Attribute</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>ac46e36dcd3292d21fd29139ba4db127c</anchor>
      <arglist>(const Glib::ustring &amp;name, const Glib::ustring &amp;value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Attribute</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a3edce1f392cd9e725dc6cca8a66866ca</anchor>
      <arglist>(const AtkAttribute *gobject)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Attribute</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>ab4f0cb246a8c72bb2cabf6b79c0ef267</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Attribute</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a353ff05cceb0726cfab495f389a6426c</anchor>
      <arglist>(const Attribute &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>Attribute &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a2dd41563d326fa89c28b681c9b4d0e41</anchor>
      <arglist>(const Attribute &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>swap</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a64230b500df68f2a178755a74ca1f77f</anchor>
      <arglist>(Attribute &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_name</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a2bfb678bd499f59d879729b62a7ba8c8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_value</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a4a13a2446ce7868e39509abdaedf5bb3</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkAttribute *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a2a6ca04c4b763909d45f46eb7151ab4b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkAttribute *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>afc07729281618ca2befadc4450728e31</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>AtkAttribute</type>
      <name>gobject_</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>a8243e2df2dea5d0d6e54ea5f0a645879</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>swap</name>
      <anchorfile>classAtk_1_1Attribute.html</anchorfile>
      <anchor>ab160a8d72a859ee7b7b9eb83da3c9ef3</anchor>
      <arglist>(Attribute &amp;lhs, Attribute &amp;rhs)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Atk::AttributeTraits</name>
    <filename>structAtk_1_1AttributeTraits.html</filename>
    <member kind="typedef">
      <type>Atk::Attribute</type>
      <name>CppType</name>
      <anchorfile>structAtk_1_1AttributeTraits.html</anchorfile>
      <anchor>ad1880881d4bb61879592a79116f49a2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>const AtkAttribute *</type>
      <name>CType</name>
      <anchorfile>structAtk_1_1AttributeTraits.html</anchorfile>
      <anchor>afdc02e4c19a2cbb12d2104ead4cece4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>AtkAttribute *</type>
      <name>CTypeNonConst</name>
      <anchorfile>structAtk_1_1AttributeTraits.html</anchorfile>
      <anchor>a37462f65af25780b9a555588af344053</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static CType</type>
      <name>to_c_type</name>
      <anchorfile>structAtk_1_1AttributeTraits.html</anchorfile>
      <anchor>a56d6bf64e4c1cebd6637046a635de36f</anchor>
      <arglist>(CType item)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static CType</type>
      <name>to_c_type</name>
      <anchorfile>structAtk_1_1AttributeTraits.html</anchorfile>
      <anchor>af460000f0f606f11d05f5db4d6a45425</anchor>
      <arglist>(const CppType &amp;item)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static CppType</type>
      <name>to_cpp_type</name>
      <anchorfile>structAtk_1_1AttributeTraits.html</anchorfile>
      <anchor>a8463fe4d8ecb2f3d76b7fc63b4ad1e27</anchor>
      <arglist>(CType item)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>release_c_type</name>
      <anchorfile>structAtk_1_1AttributeTraits.html</anchorfile>
      <anchor>a8886ec0bad433b3db10a9d1a06c009c8</anchor>
      <arglist>(CType item)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Component</name>
    <filename>classAtk_1_1Component.html</filename>
    <member kind="function">
      <type></type>
      <name>Component</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a73bf5cdf33a1d8bb907d130645749f40</anchor>
      <arglist>(Component &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Component &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a11b0fe3d917430bd0247797362cac6b8</anchor>
      <arglist>(Component &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Component</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>aa50ff95a626dc9e5dc5325c44a32e19a</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkComponent *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a4c1899e62547594104ee0f4a4c9f689b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkComponent *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>afb495cb49511884934f4c7b18653448e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>guint</type>
      <name>add_focus_handler</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a3801c9c8883b04c3cb6cbc3a8324d720</anchor>
      <arglist>(AtkFocusHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>contains</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a9f0d78bcee8ad86ba3da96a35270602a</anchor>
      <arglist>(int x, int y, CoordType coord_type) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_accessible_at_point</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a03198db8d14a458dee6f02e627953a15</anchor>
      <arglist>(int x, int y, CoordType coord_type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_extents</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>aea6bc7d173065befea7e2044b3dbc5c3</anchor>
      <arglist>(int &amp;x, int &amp;y, int &amp;width, int &amp;height, CoordType coord_type) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_position</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>aa4340292ae1eaed013508a714067cb5b</anchor>
      <arglist>(int &amp;x, int &amp;y, CoordType coord_type) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_size</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>af4b122566ff165fff5b43b79e9a758eb</anchor>
      <arglist>(int &amp;width, int &amp;height) const</arglist>
    </member>
    <member kind="function">
      <type>Layer</type>
      <name>get_layer</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a88ec223afa84da6bcf094840b8b3457a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_mdi_zorder</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>aa6cfa3a6245455cab90aa550d61d1e6b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>grab_focus</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>ab62940b0782345103171b8e752b58f28</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>remove_focus_handler</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a980a75536f126672470779ab68a08502</anchor>
      <arglist>(guint handler_id)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_extents</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a9d4d0aa5f9531ed200340e4b273c29cd</anchor>
      <arglist>(int x, int y, int width, int height, CoordType coord_type)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_position</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a0f799ad812be9ee955d5e04b1022d107</anchor>
      <arglist>(int x, int y, CoordType coord_type)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_size</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a41f4181b9b75198b77e2edbdb5dab2f2</anchor>
      <arglist>(int width, int height)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a15771f86615e09fff9cc8a2e2edabf47</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>aed84d91484c71856c5f082bf0a1a817b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Component</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>af1afe43507f5afcf2f996cc847d7c084</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual guint</type>
      <name>add_focus_handler_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a93b433cd08ca6b758ff4b322974b9ed7</anchor>
      <arglist>(AtkFocusHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>contains_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>aedd62b61aecfc3363c53f098050b31f5</anchor>
      <arglist>(int x, int y, CoordType coord_type) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_accessible_at_point_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a4f90a61d77db59b07b006b4f600a8d76</anchor>
      <arglist>(int x, int y, CoordType coord_type)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_extents_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a6d388a8c954ca88d2293ddc689f5dcd4</anchor>
      <arglist>(int &amp;x, int &amp;y, int &amp;width, int &amp;height, CoordType coord_type) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_position_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a9264f25dc8760723bc5febc1de7a10a0</anchor>
      <arglist>(int &amp;x, int &amp;y, CoordType coord_type) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_size_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a74f9c56e314dd51f1d06aebb5a5d66d9</anchor>
      <arglist>(int &amp;width, int &amp;height) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Layer</type>
      <name>get_layer_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>aa6f80b7d75ad38dde99363321277d344</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_mdi_zorder_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a8d8007ca4c7650f4c2a9012ec557a0bc</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>grab_focus_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a1b44688c98c64438910d4aa526b9c7a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>remove_focus_handler_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a2364cc6e09512e0f3fdbc296789da99e</anchor>
      <arglist>(guint handler_id)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_extents_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a035a8abcdf88833c8343ef73a2d42396</anchor>
      <arglist>(int x, int y, int width, int height, CoordType coord_type)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_position_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a46471481ae0d6e3554d45d1ef6563cd0</anchor>
      <arglist>(int x, int y, CoordType coord_type)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_size_vfunc</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>af1ffcb3ec49ce31a9a102757dfd4a2b7</anchor>
      <arglist>(int width, int height)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Component &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Component.html</anchorfile>
      <anchor>a3eb83954385bb8705cfd2d6d4f2a0f23</anchor>
      <arglist>(AtkComponent *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Document</name>
    <filename>classAtk_1_1Document.html</filename>
    <member kind="function">
      <type></type>
      <name>Document</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a1975a281a46f8531334e06a14411eec1</anchor>
      <arglist>(Document &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Document &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a384063d2b07498352bc942ae1b6e0c54</anchor>
      <arglist>(Document &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Document</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>ab22eab361226e46c4f16fc636eb0d880</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkDocument *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a1acc71e80cfc3cdd48c7a17c5a7209fd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkDocument *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a537362ada144cbbd81e6d06b9ed39832</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_document_type</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a93c1d822a7139d7d2c4ecef982eb9919</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>gpointer</type>
      <name>get_document</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a9416b4cdce5546b53c01590cf345d916</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_attribute_value</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a75295ce790683e55da4e459c87f0bcb5</anchor>
      <arglist>(const Glib::ustring &amp;attribute_name) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_attribute_value</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a820411b79a19b85f3b49fd0cf270805c</anchor>
      <arglist>(const Glib::ustring &amp;attribute_name, const Glib::ustring &amp;attribute_value)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a4196505a6fa361087e1331099f163a9b</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a2fbe181bf5391efbc4cd83df6aae15d5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Document</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a7d887df675bfe88dca815e09684e4eba</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const gchar *</type>
      <name>get_document_type_vfunc</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>af7f1246bb1cca718e97d69a4159ca415</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual gpointer</type>
      <name>get_document_vfunc</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>aecb092e7d42b5694ee2fa47984f0b15e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Document &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Document.html</anchorfile>
      <anchor>a03ea1365835687a661421ef1a4ea4582</anchor>
      <arglist>(AtkDocument *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::EditableText</name>
    <filename>classAtk_1_1EditableText.html</filename>
    <member kind="function">
      <type></type>
      <name>EditableText</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>aaedb014b2be5bb8da0e8cd98e9137d59</anchor>
      <arglist>(EditableText &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>EditableText &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a337c08c23de87cee1200ddae9d131ba5</anchor>
      <arglist>(EditableText &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~EditableText</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>abc7aaf9765a8728be8cec4955a48e614</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkEditableText *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a79e9c02dad5c7ee9cc5392f937958ab6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkEditableText *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a7186357086828990122f0c6b49c6d4e4</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_run_attributes</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>ae37407f98c293b1c627478c1ab09fc19</anchor>
      <arglist>(const AttributeSet &amp;attrib_set, int start_offset, int end_offset)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_text_contents</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a6a4873f929dc68078ac04626d289cb3d</anchor>
      <arglist>(const Glib::ustring &amp;string)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insert_text</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a42a9201f189d8ee84315407a1cb6583b</anchor>
      <arglist>(const Glib::ustring &amp;string, int length, int &amp;position)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>copy_text</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a6396f4e74b99391d865ec5249a2a208d</anchor>
      <arglist>(int start_pos, int end_pos)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cut_text</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a716cc5445588d01148cf7abadef55890</anchor>
      <arglist>(int start_pos, int end_pos)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>delete_text</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a21a956ca942bb0fb2907abb1e2253b05</anchor>
      <arglist>(int start_pos, int end_pos)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>paste_text</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>ab871ed98fae56fc8a7f15cfcc74267b8</anchor>
      <arglist>(int position)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a3eb8a3bdb1c8a27901f2c8669c428685</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a7f4f438d3bbed72d64a988ab1ceff29c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>EditableText</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>ae158517991102b56fbf26235995c12dc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_run_attributes_vfunc</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a1dbced3c1a3cddb2f6b5026d9861899e</anchor>
      <arglist>(AtkAttributeSet *attrib_set, int start_offset, int end_offset)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>set_text_contents_vfunc</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a94fa29260877cc59681573745c299e6a</anchor>
      <arglist>(const Glib::ustring &amp;string)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>insert_text_vfunc</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a8804d8be2962b4c3bf4ab7e1a0fdbfd7</anchor>
      <arglist>(const Glib::ustring &amp;string, int length, int &amp;position)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>copy_text_vfunc</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a0f7fd8e287ea5cd03c24498d8e565902</anchor>
      <arglist>(int start_pos, int end_pos)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>cut_text_vfunc</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>aac4d08e280d76ff17146d71bb3421ef2</anchor>
      <arglist>(int start_pos, int end_pos)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>delete_text_vfunc</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>ae0773ba2194a2c6a23438666c62c03ab</anchor>
      <arglist>(int start_pos, int end_pos)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>paste_text_vfunc</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>a72ea607c3cbad44d064441624c34984e</anchor>
      <arglist>(int position)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::EditableText &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1EditableText.html</anchorfile>
      <anchor>ad7d508f779bfcfb1b0af2a55af905e34</anchor>
      <arglist>(AtkEditableText *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Hyperlink</name>
    <filename>classAtk_1_1Hyperlink.html</filename>
    <base>Atk::Action</base>
    <member kind="function">
      <type></type>
      <name>Hyperlink</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>abd51909f27b6aed85b4827505683a11c</anchor>
      <arglist>(Hyperlink &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Hyperlink &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>ac5e3cf4827aab23e58ecf6ce80b7e7a9</anchor>
      <arglist>(Hyperlink &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Hyperlink</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a46c3c29e700a1c8fdd3206a03f12b210</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkHyperlink *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a4293809a02b10591a0a3a51a4ba2a0fe</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkHyperlink *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a0be616a3c51e72359918bdc177164e18</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkHyperlink *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>ad8bd79cc7e064ffb1f3a108dfec2ed29</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_uri</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>abc848e200b1f1a7bac81cf36bbcd92d2</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_object</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>acd243cedc1efb779f0aa27a7ecfa4e53</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; const Atk::Object &gt;</type>
      <name>get_object</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a0a11ca551d9024b9ec0a475b041f7ddc</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_end_index</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a0dab3361ad3fe31435598da062f5a6c2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_start_index</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a78587b22e0f9f8798dea0c6e8f9c4bd3</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_valid</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>ad28c5895979ecbc17a0157541935575d</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_inline</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>ab2091fdfb3e6d1326425da08db853eca</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_anchors</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>adad4526ee0e22c97d00734f30af63f4c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_link_activated</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a033b89a39683263e23abcefc59040adf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; bool &gt;</type>
      <name>property_selected_link</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>ae59fde8c52b629b89435ea595cc2a5d5</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; int &gt;</type>
      <name>property_number_of_anchors</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a803f13a67421c61aee18fdecce0513c1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; int &gt;</type>
      <name>property_end_index</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a66505f9312058a59fdf526bc611352cd</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; int &gt;</type>
      <name>property_start_index</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a0854a68e4ff01c14b0d0e7f0d98ab7bd</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>af21f10a0718b0a6745f1e974f0919ffe</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual gchar *</type>
      <name>get_uri_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a6ba5085ed7564c64e9d8405d4206c46a</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_object_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>aa9f93e802845289ab5b05e3de70b9ef4</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_end_index_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>aec6483ac3530f00223cfa5d827a8eb40</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_start_index_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a3e0fd3354b42bfec44db24e9e608d581</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_valid_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a3a84035f61fe579cd0961e87c38dcc30</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_n_anchors_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>aebcd7ff25d64f91b706d98691d7b519f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual guint</type>
      <name>link_state_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>aa673b07a18d07bb3b4be39f644f1a3ad</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_selected_link_vfunc</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>ad8c013968e68f818558436b1a88a2a71</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_link_activated</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>a50b6602f4b136a7a48e1b6d199e2a2e7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Hyperlink &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Hyperlink.html</anchorfile>
      <anchor>af90587b7c6392449e9e406f7cc6d3a8f</anchor>
      <arglist>(AtkHyperlink *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Hypertext</name>
    <filename>classAtk_1_1Hypertext.html</filename>
    <member kind="function">
      <type></type>
      <name>Hypertext</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a187a48e95508aa456922e66ef8f184bd</anchor>
      <arglist>(Hypertext &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Hypertext &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a55814a01ac65b2671c5c1c6892692bde</anchor>
      <arglist>(Hypertext &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Hypertext</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a093efa15eb1501049fb9c6717558a9d8</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkHypertext *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a25cd5f560ea0fe66c02108045a706055</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkHypertext *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>afd1eb29f803083da140e17d0e11dc65e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Hyperlink &gt;</type>
      <name>get_link</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a3ed6cfad5b4222d41b5383899e43f413</anchor>
      <arglist>(int link_index)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; const Hyperlink &gt;</type>
      <name>get_link</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>ac1e04765d6f0e168149b678cf39e96fa</anchor>
      <arglist>(int link_index) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_links</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>ad3ccfd1f1bdcbabb10533ab8a36b56aa</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_link_index</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a010dad82b8c32b2e07b4ff87c29001bf</anchor>
      <arglist>(int char_index) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, int &gt;</type>
      <name>signal_link_selected</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a37b78da06a00df04e0791114e7536c80</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Hyperlink &gt;</type>
      <name>get_link_vfunc</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a368e12fae293737c1d2147eaf2747c3c</anchor>
      <arglist>(int link_index)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>get_n_links_vfunc</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a4d138c24a98b611f1cc886cb8d56eec2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>get_link_index_vfunc</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a9a477558b237932d724ce5786edcd1eb</anchor>
      <arglist>(int char_index) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>adaa05a5a838f566497324999ac639e3e</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a858a059b2b1b9e9170e97daccd64754d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Hypertext</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a78d1d5a298353da4cec128c7dcdbad39</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_link_selected</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>a404833990e4ea9cdd239b73322cabac3</anchor>
      <arglist>(int link_index)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Hypertext &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Hypertext.html</anchorfile>
      <anchor>acf4d49135820c5191f7189fab2d7664d</anchor>
      <arglist>(AtkHypertext *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Image</name>
    <filename>classAtk_1_1Image.html</filename>
    <member kind="function">
      <type></type>
      <name>Image</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a07bb0fa286d798c730bf7dac77506fcf</anchor>
      <arglist>(Image &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Image &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>aaa4c68197f905772301a70f4803135fc</anchor>
      <arglist>(Image &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Image</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a66ad3f6b5b4a9d82cacc6817da0959b7</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkImage *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a42614373dfd9c116e6343110a77e7a3b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkImage *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a854e3c80842cbf8c2becb568a07a72ce</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_image_description</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a53fe6d9b350bf5fd7ba19a6f7179a55c</anchor>
      <arglist>(const Glib::ustring &amp;description)</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_image_description</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a2e9f3362776d798f060ce6e421368006</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_image_size</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a629fb7906a2828dab79d76ef7f501177</anchor>
      <arglist>(int &amp;width, int &amp;height) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_image_position</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a44f16c578adb4e12ae6b86479ec53546</anchor>
      <arglist>(int &amp;x, int &amp;y, CoordType coord_type) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a0301a217fa7dbd2994a1ff8904e9c8f2</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a39e9cbc314b2bf63805ead79dcd8a745</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Image</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>acbfd02f0474db188114575c0070efbca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_image_description_vfunc</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a445291439ee8c0b3feac06da935bccdb</anchor>
      <arglist>(const Glib::ustring &amp;description)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const char *</type>
      <name>get_image_description_vfunc</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a95394abb517fdfeaa4eed0a01f51bae2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_image_position_vfunc</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a7dc511dd047b419178da23e5ad11cce5</anchor>
      <arglist>(int &amp;x, int &amp;y, CoordType coord_type) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_image_size_vfunc</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a79510efda15b10c65bd4b64b2e79f6fc</anchor>
      <arglist>(int &amp;width, int &amp;height) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Image &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Image.html</anchorfile>
      <anchor>a03bbf10f56b004d274029b27bd9d83f2</anchor>
      <arglist>(AtkImage *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Implementor</name>
    <filename>classAtk_1_1Implementor.html</filename>
    <member kind="function">
      <type></type>
      <name>Implementor</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>a107c3e711d707d84e43eecd412402989</anchor>
      <arglist>(Implementor &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Implementor &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>a2e584a6070fe85f63280b83edcc57ba8</anchor>
      <arglist>(Implementor &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Implementor</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>acf9348d9662308d4352be7036d347bdd</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkImplementor *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>aff1cda547ea155d852aa0e1db6194c16</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkImplementor *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>a5d3059ccd783aa23a7c0061db211293d</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>a838764354ab8c6d2c84ff291b57fdb05</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>a9460675c87793cb667a377568f5d348e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Implementor</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>a7c5105ae5d57982fa69fcacdb891e24d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Object &gt;</type>
      <name>ref_accessibile_vfunc</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>ab8c35fea2dd823c7f2b31548cb57d1c6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Implementor &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Implementor.html</anchorfile>
      <anchor>a6b4ff8928c74e07e6c6655865baffbfb</anchor>
      <arglist>(AtkImplementor *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::NoOpObject</name>
    <filename>classAtk_1_1NoOpObject.html</filename>
    <base>Atk::Object</base>
    <base>Atk::Component</base>
    <base>Atk::Action</base>
    <base>Atk::EditableText</base>
    <base>Atk::Image</base>
    <base>Atk::Selection</base>
    <base>Atk::Table</base>
    <base>Atk::Text</base>
    <base>Atk::Hypertext</base>
    <base>Atk::Value</base>
    <member kind="function">
      <type></type>
      <name>NoOpObject</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>ab4f7e9560175a1ec47828fe098914af9</anchor>
      <arglist>(NoOpObject &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>NoOpObject &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>abbd16ef619e527d41b076e79a7c76cfe</anchor>
      <arglist>(NoOpObject &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~NoOpObject</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>a3b4924920b26842237bf47bebc57f981</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkNoOpObject *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>a2b94e547f45fb8be052524820052ff26</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkNoOpObject *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>a9abe76459cd477eaa33c17c7fbc0b34d</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkNoOpObject *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>acc0040059c9952b437686ae30d5730ea</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>aded86b1b34b3350cac1366e52c4663d2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::NoOpObject &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1NoOpObject.html</anchorfile>
      <anchor>a0cb9e4aec035de86146f2b798f72a181</anchor>
      <arglist>(AtkNoOpObject *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Object</name>
    <filename>classAtk_1_1Object.html</filename>
    <member kind="function">
      <type></type>
      <name>Object</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>abc9637d9681fc84134c9ddd9a263054f</anchor>
      <arglist>(Object &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Object &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a01c8dca87dcf16b3922293730d2c54a3</anchor>
      <arglist>(Object &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Object</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aa313e8045e88dc42fbdd5f8b4807fc69</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkObject *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>afa64495a728d744cb222d54a578cad26</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkObject *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aa902a8241cf519734ba11f982093d1da</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkObject *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a9fc15cfa701a850082ae7b9e0cb88762</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_name</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aae6134112f48e73d93a1e40cfb7044aa</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>abd9d30c56f75fe416262171440ce452c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_parent</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a82abcafde031d7c65fee51cf8e88b3c7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_accessible_children</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a368a53f1c638834f96b1ef02bcb27767</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_accessible_child</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>af32a4c256cfa018ce284e5ac4feafdf1</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; RelationSet &gt;</type>
      <name>get_relation_set</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a8397103451eb346e3fd4bde568a96932</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Role</type>
      <name>get_role</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a80d06bdc65d4841f6a1baf43b1d406ca</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; StateSet &gt;</type>
      <name>get_state_set</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a079a4f3a9d2c5f8d34661bdc4265b41a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_index_in_parent</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a341770f5f567bee4f241c7c4030140cd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_name</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a11b8b42866677db3b1a241a4071b0a5e</anchor>
      <arglist>(const Glib::ustring &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a7b44bd87ad24140b8f0bbe8ee4267205</anchor>
      <arglist>(const Glib::ustring &amp;description)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_parent</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a05b859f172dcce174b6ec4c52e0b76be</anchor>
      <arglist>(const Glib::RefPtr&lt; Atk::Object &gt; &amp;parent)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_role</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>ac51f6e7286a90a5d4daee05160fe4f28</anchor>
      <arglist>(Role role)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>notify_state_change</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a220aafba4f632e755c45bc57f3293689</anchor>
      <arglist>(State state, bool value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>add_relationship</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a8ccf42eed0a5625d4c46444c73412daa</anchor>
      <arglist>(RelationType relationship, const Glib::RefPtr&lt; Object &gt; &amp;target)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>remove_relationship</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>ad98e5624388dfec805132e36f6ba53c4</anchor>
      <arglist>(RelationType relationship, const Glib::RefPtr&lt; Object &gt; &amp;target)</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, guint, gpointer &gt;</type>
      <name>signal_children_changed</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a3135e99b1feffa1641d15437203e448c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, bool &gt;</type>
      <name>signal_focus_event</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aac19a80f057e809bb70ee470e4f7baee</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, AtkPropertyValues * &gt;</type>
      <name>signal_property_change</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aa82102716d675abe1ecd782f99e22c08</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, const Glib::ustring &amp;, bool &gt;</type>
      <name>signal_state_change</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>ae50134a62634952743dddb0fc713c1cf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_visible_data_changed</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a2416da5d43130acfd0ac455661927d70</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, void ** &gt;</type>
      <name>signal_active_descendant_changed</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a666296cb0d48882d97a490c611d86aee</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::ustring &gt;</type>
      <name>property_accessible_name</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a5f5b74cb23844b99b37be6e9fb571045</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::ustring &gt;</type>
      <name>property_accessible_name</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a291208b5b0200021a9975ed0493e5376</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::ustring &gt;</type>
      <name>property_accessible_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aea189ff4f0a8bd3113f173ce0916e5f8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::ustring &gt;</type>
      <name>property_accessible_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a67603990eb81c3ec5034741eecea1d00</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_parent</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a823f74c8ad09491aa3ffb7e0e992fac7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_parent</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>acc489d3937f7edc8b3ff131f8640a103</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; double &gt;</type>
      <name>property_accessible_value</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>ab90aeda547191df4395ce03ee0040254</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; double &gt;</type>
      <name>property_accessible_value</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a61dc418c57b395d0fff9c6afb6baac16</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; int &gt;</type>
      <name>property_accessible_role</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a8832c96c8bbb9c4aabc3823d8ee883f7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; int &gt;</type>
      <name>property_accessible_role</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a2f77d34c93d15d110f5bf296f96e5fb7</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; int &gt;</type>
      <name>property_accessible_component_layer</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a72e5f820e4f0e42d0e9057d626c01376</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; int &gt;</type>
      <name>property_accessible_component_mdi_zorder</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aa93dbd493b00d0c6604db2bd5b443d38</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::ustring &gt;</type>
      <name>property_accessible_table_caption</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a481215c73723a3dc44ea4088a08cd3a9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::ustring &gt;</type>
      <name>property_accessible_table_caption</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a8926b28eca3a564f44146ede724a1c9a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::ustring &gt;</type>
      <name>property_accessible_table_column_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a58f00150a90a1bcf26f928ab55ef11f6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::ustring &gt;</type>
      <name>property_accessible_table_column_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a68be94d67f19b516ce30b2b37760c7a6</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_table_column_header</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>af0adef0983ba045a1e841f88fa9fb896</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_table_column_header</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>afbc9398001c317ac6bbf4d737c843ed8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::ustring &gt;</type>
      <name>property_accessible_table_row_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a9e2b9620ef4627e94762bbc4f1ca6dd2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::ustring &gt;</type>
      <name>property_accessible_table_row_description</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a2d62adfda6c924e5e135a21cd336aeb9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_table_row_header</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>aab5931ecd39175585e805862237ccefc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_table_row_header</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>ad867ef2b421f890d226a4b4af6d37d3c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_table_summary</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a31049cc6fa2f8c2922308d94a9ffd49d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::PropertyProxy_ReadOnly&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>property_accessible_table_summary</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a5b8b4253778655f9bef936f7921953f2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>ab6c0fea38fa80a8db962f79706bca6b6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_children_changed</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a70cdaa61ed852885d72d4b23ae71c042</anchor>
      <arglist>(guint change_index, gpointer changed_child)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_focus_event</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a55ade2971976ab91064e44d956dd4e29</anchor>
      <arglist>(bool focus_in)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_property_change</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a3ce5216408c6216502d2c96a016e9ff9</anchor>
      <arglist>(AtkPropertyValues *values)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_state_change</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>ac7838d1294fa83f4aa2280f02f779397</anchor>
      <arglist>(const Glib::ustring &amp;name, bool state_set)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_visible_data_changed</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a56bcdadf8e0cb521023900a04f52501b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_active_descendant_changed</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a4c15f596001f107fa12ab6b02c6ac5f1</anchor>
      <arglist>(void **child)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Object.html</anchorfile>
      <anchor>a896ed35b3df49cb5a439b605c1ce4dd8</anchor>
      <arglist>(AtkObject *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::ObjectAccessible</name>
    <filename>classAtk_1_1ObjectAccessible.html</filename>
    <base>Atk::Object</base>
    <member kind="function">
      <type></type>
      <name>ObjectAccessible</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>ab3c93fa987049e62cb212914c6151f42</anchor>
      <arglist>(ObjectAccessible &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>ObjectAccessible &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>a7449cb00d4252128c01c418496b8d6e2</anchor>
      <arglist>(ObjectAccessible &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ObjectAccessible</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>a042911d5c7680e73e4950f9513f822eb</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkGObjectAccessible *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>af320e71cb4016fd4604a8729d03bcddd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkGObjectAccessible *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>aca604446ff39b56279c5ec60cd8f3d5c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkGObjectAccessible *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>a5fb3ca788cae3ad0cd5efa9462a436d1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>a83b1bf11cc078862cfbc7c65fa1835f7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Glib::RefPtr&lt; Glib::Object &gt;</type>
      <name>get_object</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>af873a636167eee71f0f3ded78c557079</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Glib::RefPtr&lt; const Glib::Object &gt;</type>
      <name>get_object</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>a505b216d2afc279feb40737734da978a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>for_object</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>a576d8c08b6401f6f4d377570dd4620e3</anchor>
      <arglist>(const Glib::RefPtr&lt; Glib::Object &gt; &amp;obj)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static Glib::RefPtr&lt; const Atk::Object &gt;</type>
      <name>for_object</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>ad6515eb17ddca2656817266e8f6fa675</anchor>
      <arglist>(const Glib::RefPtr&lt; const Glib::Object &gt; &amp;obj)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::ObjectAccessible &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1ObjectAccessible.html</anchorfile>
      <anchor>ad064cd66c057c1e305272a0e7ae8a993</anchor>
      <arglist>(AtkGObjectAccessible *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Range</name>
    <filename>classAtk_1_1Range.html</filename>
    <member kind="function">
      <type></type>
      <name>Range</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a53714adcdd043b435a07143b310cfea2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Range</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>af03d12ebdc841f83d574c25d305db509</anchor>
      <arglist>(AtkRange *gobject, bool make_a_copy=true)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Range</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a2ac6cb9af42b516ddb69ccac246ac291</anchor>
      <arglist>(const Range &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>Range &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>ad9181fa541e9eeb23df6fcf47c4f6586</anchor>
      <arglist>(const Range &amp;other)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Range</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>ac4b86970d97438f009d4320d80642bcc</anchor>
      <arglist>(Range &amp;&amp;other) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Range &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a002b8b4928d5680f8c825181ed04b446</anchor>
      <arglist>(Range &amp;&amp;other) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Range</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a5d6a5be9c417c9eb74d0b77bed5406ab</anchor>
      <arglist>() noexcept</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>swap</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a7046bfd8002a2f5569deab5abb87271c</anchor>
      <arglist>(Range &amp;other) noexcept</arglist>
    </member>
    <member kind="function">
      <type>AtkRange *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a547eb97c2a9306b3e11ece3e5e2902f8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkRange *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a292b4a7376883e8f48013f962fd8a202</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkRange *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a8704f873b6f23b8add9d06b0ea83f5bc</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Range</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a6af835d5d2a416ec2dc69d9a2ea0ad9a</anchor>
      <arglist>(double lower_limit, double upper_limit, const Glib::ustring &amp;description)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>get_lower_limit</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a250e2ba10b7574c0ca5456cef948dced</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>get_upper_limit</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a02fe0add58c0bb0cd391acdbac749985</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>acd3cc01db46745f8e10ed45567aee598</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>AtkRange *</type>
      <name>gobject_</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>a6eea6ef97b622386c2e843e109b0a410</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>swap</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>aa752b782ec6f9f1e9e1e7fb15bf066bd</anchor>
      <arglist>(Range &amp;lhs, Range &amp;rhs) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Atk::Range</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Range.html</anchorfile>
      <anchor>ad9b72771e6e36dbdbf7a6e30b1458d7c</anchor>
      <arglist>(AtkRange *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Relation</name>
    <filename>classAtk_1_1Relation.html</filename>
    <member kind="function">
      <type></type>
      <name>Relation</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a79a2c00f770c445116c634a3ec84c1f0</anchor>
      <arglist>(Relation &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Relation &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a29d419152f5f34b1850e0be3a79c3a7d</anchor>
      <arglist>(Relation &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Relation</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>aa00a351e877d3db986af1223c0aa859b</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkRelation *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a970cc1259ca3b3430c154fcf54de4fa9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkRelation *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a3a3d8415c95d8f2d017fd6242a0363f5</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkRelation *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>ac9367dea361e89b6b21422e280bb3930</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>RelationType</type>
      <name>get_relation_type</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>aef43f2c5985082c6a212c95e68e7877b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ArrayHandle&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt;</type>
      <name>get_target</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>aa43e4442416ade90e49aed678f6249eb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::ArrayHandle&lt; Glib::RefPtr&lt; const Atk::Object &gt; &gt;</type>
      <name>get_target</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a3aa68d721f59beec4a6645fe6c84b392</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add_target</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a4f4ad2f69975201108d77bc34d4337f8</anchor>
      <arglist>(const Glib::RefPtr&lt; Atk::Object &gt; &amp;target)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a4580ba63dfa8c56c374fcc2aa64eb1a8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Glib::RefPtr&lt; Relation &gt;</type>
      <name>create</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a94dbc6d8881b6826391d0c514b4babb4</anchor>
      <arglist>(const Glib::ArrayHandle&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt; &amp;targets, RelationType relationship=RELATION_NULL)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Relation</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a018bb0da9dbc46d4d079236167f7ee54</anchor>
      <arglist>(const Glib::ArrayHandle&lt; Glib::RefPtr&lt; Atk::Object &gt; &gt; &amp;targets, RelationType relationship)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Relation &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Relation.html</anchorfile>
      <anchor>a48d5c60d3a30600bdf456761fc34ef1f</anchor>
      <arglist>(AtkRelation *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::RelationSet</name>
    <filename>classAtk_1_1RelationSet.html</filename>
    <member kind="function">
      <type></type>
      <name>RelationSet</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>ad35fe0df2eadc58188b359c3cfae7466</anchor>
      <arglist>(RelationSet &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>RelationSet &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a9d3cf02f7613c6e50090c472d0e7d762</anchor>
      <arglist>(RelationSet &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~RelationSet</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a86a470b604ce8c29ef7cc445f8a438ea</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkRelationSet *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a74da83da28ae5b01d3da6c08ae7ca94e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkRelationSet *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a8d6fcdd8aaa678dd0cb07a54109d9cf2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkRelationSet *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a6d876e8ec9511de5aea9c4be8412cb70</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_contains</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a5d8cb7b1214d468fd53ff44317947662</anchor>
      <arglist>(RelationType relationship)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_remove</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a27c554ac47fd8e328c85521d5ef3d91b</anchor>
      <arglist>(const Glib::RefPtr&lt; Relation &gt; &amp;relation)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_add</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a6a80557979af5ef7babed4217b6b994d</anchor>
      <arglist>(const Glib::RefPtr&lt; Relation &gt; &amp;relation)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_relations</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>abb55332db67ef2c139a27e0e95426b9f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Relation &gt;</type>
      <name>get_relation</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>ad210452e1825dd256acd8e62cb949566</anchor>
      <arglist>(gint i)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Relation &gt;</type>
      <name>get_relation</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>aea8ed08279f540c14d0ed3b84b9d8555</anchor>
      <arglist>(RelationType relationship)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add_relation_by_type</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a437be8c938f2229ea22f89b75e12e725</anchor>
      <arglist>(RelationType relationship, const Glib::RefPtr&lt; Atk::Object &gt; &amp;target)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>ae9a9167c08a3b3d942ed993cf2cfc4f2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Glib::RefPtr&lt; RelationSet &gt;</type>
      <name>create</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a69886710da774d1a2e28172246e49726</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>RelationSet</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a7d7f55467656bbe4681eb2c13b124b8b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::RelationSet &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1RelationSet.html</anchorfile>
      <anchor>a5f5c94267804b02ea43df30cf278716a</anchor>
      <arglist>(AtkRelationSet *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Selection</name>
    <filename>classAtk_1_1Selection.html</filename>
    <member kind="function">
      <type></type>
      <name>Selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a002877071d2d2fefabe92e5cbd75777a</anchor>
      <arglist>(Selection &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Selection &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>affda86445e836fafb6ed50f991f2b66e</anchor>
      <arglist>(Selection &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>aec303efc27925a5c15981d2f18f62df9</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkSelection *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a8dcdbfa4e505b875dbab7b3643ae0511</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkSelection *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>af7f62dec98782e237d5b4014f0655a8a</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>add_selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>ad7049b1172c9dd0b9849bd2d12a5b134</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>clear_selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>afbcb542e8def62329c1e9cb52d5d24a4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>aa7276336828cc550c52ab126619f702c</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_selection_count</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>acfb31ce2089e26c783dee0638710551c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_child_selected</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>ae7e3b6520c22d348a75532cfa8ca9cff</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>remove_selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a01feedb0395d111ad41f77a14e94988b</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>select_all_selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a92e1b742054e0476c6596617d2f8de20</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_selection_changed</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a21c886f1a0e4ee0d6e3293dfbd65733d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a93a878d016d2f576db3c07390d72e558</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a490feb16313697327207e6e777041e69</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Selection</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a085fdb9ae8e3431cbaff2f6f0a32d5d5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>add_selection_vfunc</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>adfecf829b51fe9a026185c31a408af32</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>clear_selection_vfunc</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a1f4114016410eceb7e6dfe4108969ad6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_selection_vfunc</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a8b425ab0599f81f36f879447db2e60e0</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_selection_count_vfunc</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a93708f16e2cb374dc3bd358a3da7b346</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_child_selected_vfunc</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a537499ba18260d3e6a5e83ce8b646423</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove_selection_vfunc</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a96e54b0008b8c814a429cebe4a058ad8</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>select_all_selection_vfunc</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>abd539e193806de2c2071fa14be2dbad2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_selection_changed</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>abc335734ac36cf271049aafa749369b3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Selection &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Selection.html</anchorfile>
      <anchor>a3c2d7634f421fa3c5747fa0acea5336d</anchor>
      <arglist>(AtkSelection *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::StateSet</name>
    <filename>classAtk_1_1StateSet.html</filename>
    <member kind="function">
      <type></type>
      <name>StateSet</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a2029339343d9d6986af7d35ce57add5d</anchor>
      <arglist>(StateSet &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>StateSet &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>aa6f6714238245ee72589c45fc1ddd902</anchor>
      <arglist>(StateSet &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~StateSet</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>aefdf9fa273128ecad5dbe840c830ae9f</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkStateSet *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>af3865b3143141b1154182afe66570486</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkStateSet *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a981ed0181d3df33a40b7f7836771f05b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>AtkStateSet *</type>
      <name>gobj_copy</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a4537f55197b0786191a2e4fa7c00d4eb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_empty</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a5ebb49142b65bc0e4eea5667807e2736</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>add_state</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>aede4c4b8495f9772d35af9da9e77395d</anchor>
      <arglist>(Atk::StateType type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add_states</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a88e473c6fd50a2cc71cf6e2222b9eff0</anchor>
      <arglist>(const Glib::ArrayHandle&lt; Atk::StateType &gt; &amp;types)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear_states</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a7534af9c87a8e5af0c4033fafcb05f63</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>contains_state</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>ab49dcdfd6f09d04e5dd11fe66be83d27</anchor>
      <arglist>(Atk::StateType type)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>contains_states</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a6eda81a88ba7cfc1614f0cebcd4e5087</anchor>
      <arglist>(const Glib::ArrayHandle&lt; Atk::StateType &gt; &amp;types) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>remove_state</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a9f01863fb1490e645e58f1013496d7b9</anchor>
      <arglist>(Atk::StateType type)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; StateSet &gt;</type>
      <name>and_sets</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>aa04eb3eb336011bcd78f968404972170</anchor>
      <arglist>(const Glib::RefPtr&lt; StateSet &gt; &amp;compare_set)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; StateSet &gt;</type>
      <name>or_sets</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a660508b792a4dd3fed02890db488e13c</anchor>
      <arglist>(const Glib::RefPtr&lt; StateSet &gt; &amp;compare_set)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; StateSet &gt;</type>
      <name>xor_sets</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>aa474a299aedad91928c199408071dd99</anchor>
      <arglist>(const Glib::RefPtr&lt; StateSet &gt; &amp;compare_set)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>af0a832b033fd0171a5e3d24479b8a0c0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Glib::RefPtr&lt; StateSet &gt;</type>
      <name>create</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>ae99c498594c9894aff6d6a66a3dfdaa6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>StateSet</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>a677f991a217c9e4031b0ff4ad78a219b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::StateSet &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1StateSet.html</anchorfile>
      <anchor>ab23628405857278092f4fc24ddca4fe9</anchor>
      <arglist>(AtkStateSet *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::StreamableContent</name>
    <filename>classAtk_1_1StreamableContent.html</filename>
    <member kind="function">
      <type></type>
      <name>StreamableContent</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a3eb99b5389ed33f219e5c57e6e578bc1</anchor>
      <arglist>(StreamableContent &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>StreamableContent &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>ac42347f9775f2c356a335811ef6f44b5</anchor>
      <arglist>(StreamableContent &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~StreamableContent</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a1d31b1cc124f09b0e2374459abe7286e</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkStreamableContent *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a4b261e60882fdab7b8f59030252f458e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkStreamableContent *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a20eb060130afedcc0dc7c8e01753c677</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_mime_types</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>abe02a539f14b06667ad0a16656c97411</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_mime_type</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a2c5aa65b14e22d57903a31d28119646f</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Glib::IOChannel &gt;</type>
      <name>get_stream</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a3a638266bc1e153cecf9f30e8e00c875</anchor>
      <arglist>(const Glib::ustring &amp;mime_type)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>af04faf4e36324a91e17f62f9a544d656</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a8af479fb148f7a199de3b946cdda9201</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>StreamableContent</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>aea83c07375e552eca86ac18e0ff08c79</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_n_mime_types_vfunc</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a72891cb8675cc8dea2b6bacfc0bb8d09</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const gchar *</type>
      <name>get_mime_type_vfunc</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a0bd05141868d46d04cd4ff6601b05054</anchor>
      <arglist>(int i) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual GIOChannel *</type>
      <name>get_stream_vfunc</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a7dabe9eaa42131282ea89655a2d4c743</anchor>
      <arglist>(const Glib::ustring &amp;mime_type)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::StreamableContent &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1StreamableContent.html</anchorfile>
      <anchor>a5e67601b46782d97f4ebf5ed8da1a065</anchor>
      <arglist>(AtkStreamableContent *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Table</name>
    <filename>classAtk_1_1Table.html</filename>
    <member kind="function">
      <type></type>
      <name>Table</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a1f07d59e2162e3f9e74d577241ed979b</anchor>
      <arglist>(Table &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Table &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a62aae9d8e274a7d6ae06753d522cfebc</anchor>
      <arglist>(Table &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Table</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a34f3c02ca339bd219a00feb1bfd066c2</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkTable *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aee139c1919cb57ead5e86e4c21422f0d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkTable *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ad04b3402704570cbc98f7a9b6e623364</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_at</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a969b12c9e6de8883dc0c037d420e478b</anchor>
      <arglist>(int row, int column)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; const Atk::Object &gt;</type>
      <name>get_at</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a4cdf21a11c35b6d4796e364cea29f479</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_index_at</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a1c9e96ded5a02a68df3f5bcd0b489833</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_column_at_index</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a210180cf47e79f587e615a55c76c992e</anchor>
      <arglist>(int index) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_row_at_index</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ac6b5577ac1913a7f8d17d0938794efd3</anchor>
      <arglist>(int index) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_columns</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ae0ff1f729a4fe6e5d713d35912c944bd</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_rows</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a7739d870a8a7cdd4983662f873d883e9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_column_extent_at</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>af0fef09ee8dc5e4cca7f362a87273ea4</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_row_extent_at</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a655dda3e61150fdc6dda7ae7c5ad3bf4</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_caption</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a0bd537529756bad27f14a73c4c61c795</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; const Atk::Object &gt;</type>
      <name>get_caption</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aad0e445eb98c50b0a5d4aeb737357c97</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_column_description</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>acb52edab4d4c160352153bee02caaf4c</anchor>
      <arglist>(int column) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_column_header</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a82fa86dcb771a236af090956602a4f70</anchor>
      <arglist>(int column)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; const Atk::Object &gt;</type>
      <name>get_column_header</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a536f2f467ba92ffaa69b34abea774bca</anchor>
      <arglist>(int column) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_row_description</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aca28fbfb0c21511441a8f05f01e37382</anchor>
      <arglist>(int row) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_row_header</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a9ddd0581fe39bbf8a3dc0ef3a2a7140b</anchor>
      <arglist>(int row)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; const Atk::Object &gt;</type>
      <name>get_row_header</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a3c381551813751295575c00521331700</anchor>
      <arglist>(int row) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_summary</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a97c133a7516bd92416f14e65ae25a660</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; const Atk::Object &gt;</type>
      <name>get_summary</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a4efeb32105e91c965af0bc79e7f71d09</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_caption</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ad228ba0aed17656a4a357211aaddc5f3</anchor>
      <arglist>(const Glib::RefPtr&lt; Atk::Object &gt; &amp;caption)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_column_description</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a397d3e2c7b1c9a584424be3439fba24f</anchor>
      <arglist>(int column, const Glib::ustring &amp;description)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_column_header</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a4e8716d262dd3c88c90ca311266f9196</anchor>
      <arglist>(int column, const Glib::RefPtr&lt; Atk::Object &gt; &amp;header)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_row_description</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a359eaf67abf327cc9acfff33dadb8a6e</anchor>
      <arglist>(int row, const Glib::ustring &amp;description)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_row_header</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a1a53f96fde5a601678c691525216501c</anchor>
      <arglist>(int row, const Glib::RefPtr&lt; Atk::Object &gt; &amp;header)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_summary</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a73bbcf6f372e742cbb28bfa16592f300</anchor>
      <arglist>(const Glib::RefPtr&lt; Atk::Object &gt; &amp;accessible)</arglist>
    </member>
    <member kind="function">
      <type>Glib::ArrayHandle&lt; int &gt;</type>
      <name>get_selected_columns</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aabb150cf1df6ab85dddcc295b66481c5</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ArrayHandle&lt; int &gt;</type>
      <name>get_selected_rows</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a619afbf32ead3e54bc1453b8aa8f7d07</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_column_selected</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a0fd395f979e8c3324112aaed2ecc237e</anchor>
      <arglist>(int column) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_row_selected</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a6903a5d4d4b61dd977c45e3c4f9c2651</anchor>
      <arglist>(int row) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_selected</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ac9394462cf72b64a0e76d94615b7be43</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>add_row_selection</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aa2045fb8c50eede912a9bbf8912d9dfc</anchor>
      <arglist>(int row)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>remove_row_selection</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aef751c6cb1cbaf5d199d9b80dcfe03f1</anchor>
      <arglist>(int row)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>add_column_selection</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a165569ada31b77d5a633cf31121ebf35</anchor>
      <arglist>(int column)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>remove_column_selection</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a1a03bad72a13fe55d98add3be68108c8</anchor>
      <arglist>(int column)</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, int, int &gt;</type>
      <name>signal_row_inserted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a2f40270982575973bfef21ec68371467</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, int, int &gt;</type>
      <name>signal_column_inserted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a81ac3c9c15abd1467990de2d4cb5a372</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, int, int &gt;</type>
      <name>signal_row_deleted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ad895b27de98da64ee6fdbffb02c15fe2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, int, int &gt;</type>
      <name>signal_column_deleted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a52a7b5a67f86430c29528096b4d4192e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_row_reordered</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a91fca840ae1b2887aa64387a0d0b2fe6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_column_reordered</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a8492fbf792a4c5884cf4570e6ac95ced</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_model_changed</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>abdc95249c230f00d2e7f2529a253fdb6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a5dbef0d1782da1102fb2703038de84b4</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>accd1b4580b4414b05cdb08a369399a9a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Table</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ae3f99b729974c72921796c2972f2cca2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_at_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a27c39b37a36a8fb605ed34e5807bd99a</anchor>
      <arglist>(int row, int column)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_index_at_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a600466d54c36790d54a7a89b04b2d83a</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_column_at_index_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ac9381e83f9b2bbe0fe2fb4f3fcf3943f</anchor>
      <arglist>(int index) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_row_at_index_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ae9e68a25a785842bcf0d8f45f4a44c81</anchor>
      <arglist>(int index) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_n_columns_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aa9860a9f710ed75af62907c4eaef032b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_n_rows_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ac911ede507993bc7517cd627f0bd7bfe</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_column_extent_at_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ab37681e102e4fed49f0ef4a4fb504f3a</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_row_extent_at_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aeead1282f78632adbef9882540a854be</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_caption_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a8be53745fcccae8b16f04ab57dc6246e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const char *</type>
      <name>get_column_description_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aa7f1bfc2adf7bb3694626587e47ee57a</anchor>
      <arglist>(int column) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_column_header_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a8e51006907c2777fbf3378a28b8e480f</anchor>
      <arglist>(int column)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual const char *</type>
      <name>get_row_description_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ae638e9270adf85339b813d80eeb81420</anchor>
      <arglist>(int row) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_row_header_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>ab64b4bd0e99bf536b64cd60d0c0956a8</anchor>
      <arglist>(int row)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::RefPtr&lt; Atk::Object &gt;</type>
      <name>get_summary_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aae0b2766ee2dadc42be54613bfc67c1f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>set_caption_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aa3a44286d579753de653972aa39bc3e5</anchor>
      <arglist>(const Glib::RefPtr&lt; Atk::Object &gt; &amp;caption)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>set_column_description_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a1b523e525875bd715d9145d2339e0a8b</anchor>
      <arglist>(int column, const char *description)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>set_column_header_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a3bd916ee09e6eaa309f8aedabd1c0325</anchor>
      <arglist>(int column, const Glib::RefPtr&lt; Atk::Object &gt; &amp;header)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>set_row_description_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a941970119e89be3d92bcebb4916a42c6</anchor>
      <arglist>(int row, const char *description)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>set_row_header_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>afa145591edb110af261349c2b27d6a77</anchor>
      <arglist>(int row, const Glib::RefPtr&lt; Atk::Object &gt; &amp;header)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>set_summary_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a3add1b7c521d33a1a186d75d691125d9</anchor>
      <arglist>(const Glib::RefPtr&lt; Atk::Object &gt; &amp;accessible)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_column_selected_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a86b10f452a66d1dcd9bcc968dd65ecfc</anchor>
      <arglist>(int column) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_row_selected_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a5e0258cd59720b613b0bf7df655766f4</anchor>
      <arglist>(int row) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_selected_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>acdeba5d84474d7441937b5f552bed1e9</anchor>
      <arglist>(int row, int column) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>add_row_selection_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>aee629137df2ea8edd8c34734aca97a15</anchor>
      <arglist>(int row)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove_row_selection_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a59d9b04f23f6e28d18696e1380acb425</anchor>
      <arglist>(int row)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>add_column_selection_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a5da5a90e88f8b6ff060797abed26d2c9</anchor>
      <arglist>(int column)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove_column_selection_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a51ee71013d878a061b7320a44f967bcf</anchor>
      <arglist>(int column)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_selected_columns_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a2817c23bd33c3dce481447d8cca50640</anchor>
      <arglist>(int **selected) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_selected_rows_vfunc</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a9725ac616acb42976371c3afd257c909</anchor>
      <arglist>(int **selected) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_row_inserted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a52af90f686a8f29ac6397b9759d5d3f6</anchor>
      <arglist>(int row, int num_inserted)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_column_inserted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a7f3f234c028e4314ab8dd1810a7e1cbd</anchor>
      <arglist>(int column, int num_inserted)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_row_deleted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a62098f5f91740e2123139418209b7df0</anchor>
      <arglist>(int row, int num_deleted)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_column_deleted</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a6552422ab268a7923f5841ee979c3cdb</anchor>
      <arglist>(int column, int num_deleted)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_row_reordered</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a149a2225e941632fe6d2c71a083aa5da</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_column_reordered</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a316c0007b74cd843494fe41d9643f6a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_model_changed</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a4a70f9cc48913fbce380d0e77ad1b19d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Table &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Table.html</anchorfile>
      <anchor>a85251fd251158cdd97aa87b8c137f62d</anchor>
      <arglist>(AtkTable *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Text</name>
    <filename>classAtk_1_1Text.html</filename>
    <member kind="typedef">
      <type>AtkTextRectangle</type>
      <name>Rectangle</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>aef8ed58f4c770e63c2381b543339dd15</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a028e5126d3aa1e368004179981efcd3d</anchor>
      <arglist>(Text &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Text &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a8449d8e61a90240ed3b815de12e446ce</anchor>
      <arglist>(Text &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Text</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a57d232be95ed1a2eb11c6e245e8474d9</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkText *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>accddc5279ae90d9ddc5a6c01668f7970</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkText *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a6b2042fbc90bffc6833008772ae48698</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_text</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>aab73c37907cd3f1516a14c757824b583</anchor>
      <arglist>(int start_offset, int end_offset) const</arglist>
    </member>
    <member kind="function">
      <type>gunichar</type>
      <name>get_character_at_offset</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>aa4d757b9db9e157cc1af95a1469a5e1f</anchor>
      <arglist>(int offset) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_text_after_offset</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a95a74117e5eaa8431ca94deac142549c</anchor>
      <arglist>(int offset, TextBoundary boundary_type, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_text_at_offset</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a52ab4709497540f4cac25a076edf2e31</anchor>
      <arglist>(int offset, TextBoundary boundary_type, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_text_before_offset</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a551adecf4929e113bc3575e4ac7c922a</anchor>
      <arglist>(int offset, TextBoundary boundary_type, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_string_at_offset</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>adf22ecc82e21072ef153559362566145</anchor>
      <arglist>(int offset, TextGranularity granularity, int &amp;start_offset, int &amp;end_offset)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_caret_offset</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a24e1d54322c214726d40e37ebf5ec089</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_character_extents</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>aa61b2bcd17dc169fc374dbf021ddb3e6</anchor>
      <arglist>(int offset, int &amp;x, int &amp;y, int &amp;width, int &amp;height, CoordType coords) const</arglist>
    </member>
    <member kind="function">
      <type>AttributeSet</type>
      <name>get_run_attributes</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a0eea3f262e8c11c542a8305077fcb283</anchor>
      <arglist>(int offset, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function">
      <type>AttributeSet</type>
      <name>get_default_attributes</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>aaf0be9e8d95c3e55af93e3c56fc0cae4</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_character_count</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>addb8b03caaf16ce5b26e311356c56ff9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_offset_at_point</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>af6f7f991193688252079809d1117c08a</anchor>
      <arglist>(int x, int y, CoordType coords) const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get_n_selections</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a035ad58b557519a57d00de650ee241cf</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>Glib::ustring</type>
      <name>get_selection</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>ad597789041c752bdf9ff8a6bfa94e8e1</anchor>
      <arglist>(int selection_num, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>add_selection</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>af6cb6584fa1bd0a3541a3d566a356d03</anchor>
      <arglist>(int start_offset, int end_offset)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>remove_selection</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>ac0d02f671ae48bd11f6a1c451c399ef9</anchor>
      <arglist>(int selection_num)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_selection</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a7e24f7bc27300fa7312fb8742192ac65</anchor>
      <arglist>(int selection_num, int start_offset, int end_offset)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_caret_offset</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>acbd9dd3ed20867c7665f97e4f9d521d4</anchor>
      <arglist>(int offset)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_range_extents</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>aa58bbce3c64f2c60a92c70703d310495</anchor>
      <arglist>(int start_offset, int end_offset, CoordType coord_type, Rectangle &amp;rect)</arglist>
    </member>
    <member kind="function">
      <type>AtkTextRange **</type>
      <name>get_bounded_ranges</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>ae573e7186e0b4c9d00e610d04ceb3f7b</anchor>
      <arglist>(const Rectangle &amp;rect, CoordType coord_type, TextClipType x_clip_type, TextClipType y_clip_type)</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, int, int &gt;</type>
      <name>signal_text_changed</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a58ff1bd2b34535b2a7994cde50e395f0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void, int &gt;</type>
      <name>signal_text_caret_moved</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a37e2ff2aa3bdcce1d00571a47eae7b33</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_text_selection_changed</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>adfe530de29194f3693892b6b83c5244d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::SignalProxy&lt; void &gt;</type>
      <name>signal_text_attributes_changed</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a2edee4d1d755ef6045af23adb1c33dd5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a60ea0ab1d7e02db112e78daead23abde</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a6175dad0ec56e49fb1b8f43f97d6a4af</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Text</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a4abd0b8b277ee531e457959b763e4688</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::ustring</type>
      <name>get_text_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>ace1f75f6a7317f733d15f68831978dae</anchor>
      <arglist>(int start_offset, int end_offset) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual gunichar</type>
      <name>get_character_at_offset_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a26f554e04658805bd8515c2a66ae261d</anchor>
      <arglist>(int offset) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::ustring</type>
      <name>get_text_after_offset_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a51227b66167970076ae506192221ce9d</anchor>
      <arglist>(int offset, TextBoundary boundary_type, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::ustring</type>
      <name>get_text_at_offset_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a079bdc3c5be0c88e2e0441c524e8a402</anchor>
      <arglist>(int offset, TextBoundary boundary_type, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::ustring</type>
      <name>get_text_before_offset_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>ada812f5136f1e51f010f24c71b6bb49d</anchor>
      <arglist>(int offset, TextBoundary boundary_type, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_caret_offset_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a638147967fa2669c00731f3629085b3c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_character_extents_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a6d6ca6873080b327078b49c287874133</anchor>
      <arglist>(int offset, int &amp;x, int &amp;y, int &amp;width, int &amp;height, CoordType coords) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual AtkAttributeSet *</type>
      <name>get_run_attributes_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>ac9310f308da7ba29f9f1b8eab8d50d17</anchor>
      <arglist>(int offset, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual AtkAttributeSet *</type>
      <name>get_default_attributes_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a5ce28aca0503a254663208f11c64b24e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_character_count_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a20faf225c814950d55c46b5718d44269</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_offset_at_point_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>accac7c0513733ac0b5a78b54f92e481b</anchor>
      <arglist>(int x, int y, CoordType coords) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>get_n_selections_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a7f36242cc5b386304cbb9140e0d8a900</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual Glib::ustring</type>
      <name>get_selection_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a2e405d23ff1ecaa4f5df64799e80e9f0</anchor>
      <arglist>(int selection_num, int &amp;start_offset, int &amp;end_offset) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>add_selection_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>adcf6c2321bd73c525abccd50f4a4b24f</anchor>
      <arglist>(int start_offset, int end_offset)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>remove_selection_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a85ee3d0a51162dbf6060f28f0c3a8fd9</anchor>
      <arglist>(int selection_num)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_selection_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>abf5a391ed37a8f8f061ab0ae5c54f3ac</anchor>
      <arglist>(int selection_num, int start_offset, int end_offset)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_caret_offset_vfunc</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a44fd5f06d5bebd94e08ecfd0f9a316dc</anchor>
      <arglist>(int offset)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_text_changed</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>acec053d08f490ce3c00f1279ed133ce0</anchor>
      <arglist>(int position, int length)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_text_caret_moved</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>ae5f768a698cf3ba6aadfba48a9dc9b2d</anchor>
      <arglist>(int location)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_text_selection_changed</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>aaf45255b13e80d8552ed3cceee245947</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>on_text_attributes_changed</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a28e94c8c8ff33a3a1202fbd966af96b4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Text &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Text.html</anchorfile>
      <anchor>a112fb37843d9647af0ca48654c59b3c4</anchor>
      <arglist>(AtkText *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::TextAttribute</name>
    <filename>classAtk_1_1TextAttribute.html</filename>
    <member kind="function">
      <type></type>
      <name>TextAttribute</name>
      <anchorfile>classAtk_1_1TextAttribute.html</anchorfile>
      <anchor>ac64aa4b57241faccd821ecb7585c9541</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TextAttribute</name>
      <anchorfile>classAtk_1_1TextAttribute.html</anchorfile>
      <anchor>a0896075a32b7a606cadcee9fa5a31002</anchor>
      <arglist>(BuiltinTextAttribute attribute)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TextAttribute</name>
      <anchorfile>classAtk_1_1TextAttribute.html</anchorfile>
      <anchor>a1f9bdb7bc76f3acc5ebc62979c5ece1c</anchor>
      <arglist>(int attribute)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator int</name>
      <anchorfile>classAtk_1_1TextAttribute.html</anchorfile>
      <anchor>ae9f6b2c0572d5aaf9bdda1eee9ac1c94</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static TextAttribute</type>
      <name>for_name</name>
      <anchorfile>classAtk_1_1TextAttribute.html</anchorfile>
      <anchor>a7287f7e177e87a5558f3a220fffe720a</anchor>
      <arglist>(const Glib::ustring &amp;name)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Glib::ustring</type>
      <name>get_name</name>
      <anchorfile>classAtk_1_1TextAttribute.html</anchorfile>
      <anchor>a057f88c2a45781ab896551fb36cd80b1</anchor>
      <arglist>(TextAttribute attribute)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Glib::ustring</type>
      <name>get_value</name>
      <anchorfile>classAtk_1_1TextAttribute.html</anchorfile>
      <anchor>a6bc77e0d21edd5724e8acae5515228c8</anchor>
      <arglist>(TextAttribute attribute, int index)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Atk::Value</name>
    <filename>classAtk_1_1Value.html</filename>
    <member kind="function">
      <type></type>
      <name>Value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>af148f6dd41f39f0539179fabd2d25912</anchor>
      <arglist>(Value &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type>Value &amp;</type>
      <name>operator=</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a680b512b1ff37046de0d4415044c4b23</anchor>
      <arglist>(Value &amp;&amp;src) noexcept</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a5a3162eee2513bff76b1ee089af48839</anchor>
      <arglist>() noexcept override</arglist>
    </member>
    <member kind="function">
      <type>AtkValue *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a6a9576aac43ea9f61226ffe56c60bddb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AtkValue *</type>
      <name>gobj</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a6ae2f85fa166829ebb5fcd113eafa883</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_current_value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>ac3343196ff89944782d3e3408ed41cad</anchor>
      <arglist>(Glib::ValueBase &amp;value) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_maximum_value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>ab4d7cce7bc7a2ea685194f23ff593e7e</anchor>
      <arglist>(Glib::ValueBase &amp;value) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_minimum_value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a97075d7d835af826e07bf86e1ae776f0</anchor>
      <arglist>(Glib::ValueBase &amp;value) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set_current_value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a5f68e4192b070a56f2f5dbdc29d18ef1</anchor>
      <arglist>(const Glib::ValueBase &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_value_and_text</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a57b6e5cd2259cc1b9d0d0f893b54aacf</anchor>
      <arglist>(double &amp;value, Glib::ustring &amp;text)</arglist>
    </member>
    <member kind="function">
      <type>Range</type>
      <name>get_range</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>aecabb73706a6a113c636544a1592e244</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>get_increment</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a98c494ad7efd61f3e018c9b755fbf9ef</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>afe294122ffa7695ef429183e6abf1f39</anchor>
      <arglist>(const gdouble new_value)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>add_interface</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>ac8564e11ac77f72d5c57b2db14371453</anchor>
      <arglist>(GType gtype_implementer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static GType</type>
      <name>get_type</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a758297abebea6e5589e2227973b92d71</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Value</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a5e4febae93ac4a52bc5618588f45de1d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_current_value_vfunc</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>abb775b81efb15b2f5e7c9e10934497b8</anchor>
      <arglist>(Glib::ValueBase &amp;value) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_maximum_value_vfunc</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a82a14894557519d9953975159bd5e312</anchor>
      <arglist>(Glib::ValueBase &amp;value) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>get_minimum_value_vfunc</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>ad68d2d06a7a7d1da2978bd174daa0042</anchor>
      <arglist>(Glib::ValueBase &amp;value) const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual bool</type>
      <name>set_current_value_vfunc</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a1eb831ae8176d444fa8320bb1852a4cf</anchor>
      <arglist>(const Glib::ValueBase &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>Glib::RefPtr&lt; Atk::Value &gt;</type>
      <name>wrap</name>
      <anchorfile>classAtk_1_1Value.html</anchorfile>
      <anchor>a68a42fa970f6678863e0d5163fc58439</anchor>
      <arglist>(AtkValue *object, bool take_copy=false)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>lu_counter_policy_base</name>
    <filename>classlu__counter__policy__base.html</filename>
  </compound>
  <compound kind="namespace">
    <name>Atk</name>
    <filename>namespaceAtk.html</filename>
    <class kind="class">Atk::Action</class>
    <class kind="class">Atk::Component</class>
    <class kind="class">Atk::Document</class>
    <class kind="class">Atk::EditableText</class>
    <class kind="class">Atk::Hyperlink</class>
    <class kind="class">Atk::Hypertext</class>
    <class kind="class">Atk::Image</class>
    <class kind="class">Atk::Implementor</class>
    <class kind="class">Atk::NoOpObject</class>
    <class kind="class">Atk::Object</class>
    <class kind="class">Atk::ObjectAccessible</class>
    <class kind="class">Atk::Range</class>
    <class kind="class">Atk::Relation</class>
    <class kind="class">Atk::RelationSet</class>
    <class kind="class">Atk::Selection</class>
    <class kind="class">Atk::StateSet</class>
    <class kind="class">Atk::StreamableContent</class>
    <class kind="class">Atk::Table</class>
    <class kind="class">Atk::Attribute</class>
    <class kind="struct">Atk::AttributeTraits</class>
    <class kind="class">Atk::TextAttribute</class>
    <class kind="class">Atk::Text</class>
    <class kind="class">Atk::Value</class>
    <member kind="typedef">
      <type>guint64</type>
      <name>State</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ac8c786b6146e720a10e40c9a6483f153</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Glib::SListHandle&lt; Attribute, AttributeTraits &gt;</type>
      <name>AttributeSet</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>a8759d34cf55e51e9f1a43d0bf4a6db31</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>CoordType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga6c71d0aa1d2e5c4917bafa3f12c811c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>XY_SCREEN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga6c71d0aa1d2e5c4917bafa3f12c811c2aa246376eca3cdb374c574453250a4336</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>XY_WINDOW</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga6c71d0aa1d2e5c4917bafa3f12c811c2a78407bda2cc3f1c147122444c25fd5f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Layer</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_INVALID</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8acf2786bd78e626ae5cac62cbb242aca5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_BACKGROUND</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8af8efa268dabe1427fa3dd54ec999b2c5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_CANVAS</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a588a466c418c517682e75e6e8ac85a58</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_WIDGET</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a9c3733f145046c38b8b005ef15b8a612</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_MDI</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8ae938ba516f83b2acd3aed22d1800125a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_POPUP</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a197da9454716789673a749d3da413246</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_OVERLAY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a5c54d68cbdf6469bc34d9f2294b3b329</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LAYER_WINDOW</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a9d942a39ce64fc9f276b5381a72fd2da</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Role</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga19e4dff08645ca208cdf524836a1be27</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_INVALID</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a03b7adf147abb99a34364887f60e2f54</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ACCEL_LABEL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a90fb348c65faa9edba2d4b12f57362b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ALERT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a751119ceaf56a7e1d498fd0865256db5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ANIMATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8bbdc9aa636a56d50e5b2252c4b71de1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ARROW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a4e32033a4a294decb90b75426efccd51</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_CALENDAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a729cc798f3a871420edf7b84e5fce29a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_CANVAS</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27acc1d1fb0dde94d186cd240de4c83fb2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_CHECK_BOX</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a99dc1127fad81abe98e54feadd8edaef</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_CHECK_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6e41d9ae82e9d619d8e2007de55a0d83</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_COLOR_CHOOSER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a28ea532fedc5f1492f55ee42ba0d110e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_COLUMN_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac562110645a30d7ffe3f0cc2414752a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_COMBO_BOX</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a249384b8d5b79299f62b88fc0d91e5ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DATE_EDITOR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aed6ca916b1d54f9bf12c058473c4e80f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DESKTOP_ICON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6c6f6aad475905b77817469b6bc9b04d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DESKTOP_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ada71f6f6bbca69523b8f05b9798101f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DIAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac949b07517c4f4eb51c43769daea900e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DIALOG</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a07c8c90ac361cc44215bc9a13cc9d63d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DIRECTORY_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afcf15a284444b646fed5b7a2c56f5f60</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DRAWING_AREA</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a2fa15e4f6b6410032087a98829e17904</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_FILE_CHOOSER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8d2b5f26392a637571fc3b0340aba1c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_FILLER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a9577893f52a7ca0d3c8097f8c36c4117</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_FONT_CHOOSER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a964762ebfbe131d0d43a531ba313a0d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8da375d17cefb5a54b15b3d94cc28f62</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_GLASS_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6ea3843b8201512a88a5efd20252092d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_HTML_CONTAINER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a4298c2d598ded8be2c8c263882af28c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ICON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6fe1b16f7cc09e7b2f18903658d9d3b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_IMAGE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac2730b9c7eaf67367ac3c0f078220be4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_INTERNAL_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a63411be70a6256c25661b36619f991b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LABEL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad9d6252511d4e87c47c34e7721a64718</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LAYERED_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac9e80d237b517896ae4c6a5d1ae69812</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LIST</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a976a583ee8932ede9a6e3386404ca163</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LIST_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27acf53a383aadfd934ee44868d1b894f04</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_MENU</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac2b15d7e6319620647912ebeba520ca2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_MENU_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a96956fae7c290317391e196997b73962</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a44d66448a05cac51943120a980ada0c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_OPTION_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a84919c9223cf1c1956bc63bab4a06f3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PAGE_TAB</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a30cdee73954df268b35ad60fc7af7853</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PAGE_TAB_LIST</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7b253b6220fcacf99d5d5cde334fdfab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PANEL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a93d64dd645e4a919bffd28187ad4d73c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PASSWORD_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac0050f6c421892b3f27d71432dc8d805</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_POPUP_MENU</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad64cf2b1b9bb4c135bc82c2d2150ce29</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PROGRESS_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0ee7ee60e2887834ed3c725e8a27e6b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PUSH_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a893358f2d67d103974775b66973c449f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_RADIO_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a063d6d55f8b92793e2f040014fce61b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_RADIO_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8ed4fe61e40eb9110f80a643fc00be61</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ROOT_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a522edfb1bad8ea4e20cfff5b2d4a4b54</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ROW_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0673b83465635c405e96ff2319ab7768</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SCROLL_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa7dcad3ca39aa6cfe8e7e2cac8613ad6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SCROLL_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a77b4d9445e55372af979ca6e9bd3ea44</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SEPARATOR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a3c73d2fb94f28c3826c91971f105157a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SLIDER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a72284d576401425d7d9d25dc227418b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SPLIT_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a854d707133a53c61d2a7f8abd51c662a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SPIN_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ae196510d3430ed6bd20c180cc20459d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_STATUSBAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aca33485bd1b36ab060e0ee40f0fb146f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a23a1885658083e4b711ba07e54c977a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TABLE_CELL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a37b8c0a0962de75d1c5543aee0c7f334</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TABLE_COLUMN_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab4e1a16cfa76e026959c6973b6d3065f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TABLE_ROW_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a764cac0e6c79835535c01068f3048f9b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TEAR_OFF_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0e7d46e59c365b1da54969745015f76a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TERMINAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a9a6bb25c658677bb58e1bda9828c1c2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aae92d12d274c258e1e16b02b1dfe72b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TOGGLE_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a3a9554aa8f05b3fd255e395a75e13a65</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TOOL_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a9e57841f611edac11ce5cb99886241ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TOOL_TIP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa486c34f56938cc27fa35ca7d3e08b63</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TREE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a63c6af1d80435c09ed5b450eb6604867</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TREE_TABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a16edf707b28f7c93009964498ae556d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_UNKNOWN</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a922437fd0b6fbddbf4f89f1733b8a280</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_VIEWPORT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa0c2aa0067292f8ad5e74bf77741d3a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_WINDOW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a2360eb9b8e8509c4002ddfee5a9d0add</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a1402405b5b60ac46a03ba9e1b330ee10</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_FOOTER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a3c73c67b2af4e6ad007608b6087728ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PARAGRAPH</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad2aebfb6550f478089da3c5a999270dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_RULER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7fb381b91ab96dafa1e6bd5895d01cb2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_APPLICATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27acbd3e3422a0c938be7d7321d3b81f368</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_AUTOCOMPLETE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27af63525acc7814e9502808813e87fa5b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_EDITBAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad2b191ec8ae853c6dd65f4878de54122</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_EMBEDDED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afe3884c520dcfbd0e8e24d1351175401</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ENTRY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27adbdabc7fa7498302460bd8037c2789eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_CHART</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aeb0574171eab9711dcd432e4f82e1146</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_CAPTION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a642a134eed486e055b8880a60f72f4ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DOCUMENT_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6815eb11edc3f47cc3ffe55a14c4308a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_HEADING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a78988aacdcea3f7f08a2e1d16e29cb12</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_PAGE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a1d1cd19b29d207ec9bd026ed23169425</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SECTION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a985d679f4284b48f3cb49bb2cb931a3c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_REDUNDANT_OBJECT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a18b9db38b50d1d36526a04cb839f8802</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_FORM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afcfaf66601c4630eb9d8cd52e1bb93c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LINK</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7cd3b449a443269a30a8176bd11597ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_INPUT_METHOD_WINDOW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7087be6665736ed5626110232b72e591</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TABLE_ROW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a85e5571d7f42590c70da2826138e10a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TREE_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0929bf66fb02ff727e9ec90ba88436a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DOCUMENT_SPREADSHEET</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afdad04066fe7ecd1a438a07dad12984d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DOCUMENT_PRESENTATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0e2eb5a6b3d5ec4fd7b85028ea0f9cd2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DOCUMENT_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad437d1c0af8ac4382c3645b059a3c5a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DOCUMENT_WEB</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aaf8bb5440dcefd451aecdfefbc1dd25f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DOCUMENT_EMAIL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aca847b06edcf30ffdae5714fe2403fdb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_COMMENT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aff2f2f991f22f2fec8d17a01aeb3d9c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LIST_BOX</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7c9ba8c94939f3cd9e897cf72be9ada3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_GROUPING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab705a38b371ef3fa9db7dbca92c868fe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_IMAGE_MAP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a60b619fe5eee23ddb8faa812f0528426</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_NOTIFICATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a89a5954fa09c292ed2ac5c303a44b5b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_INFO_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa78f97904dd22f8c2315a2447213a17e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LEVEL_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afbd314cc3c14ca683861355c59daa65a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TITLE_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0c8599152d2d4bab7943665ebd353c68</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_BLOCK_QUOTE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab14b366c2a0206384fb6cf098134793d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_AUDIO</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ade73b7b1b708d0426fb257524c8faea7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_VIDEO</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ade1aadbc70a285548c4986763c910341</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DEFINITION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad542b7a01f095909915e229d7287cfe9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_ARTICLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27abf754dd34add6748625086310d05dea6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LANDMARK</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a06a285cfa19f9d1d2bd6f82c91145591</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LOG</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a803f7511f98ed1955b1cfc0e16e4fb7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_MARQUEE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afb44f84d3bfab6a6881a1462e5296696</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_MATH</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a5c18a5acfa9b97641452acd8537280be</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_RATING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad0a9063c6d3bf4f279625a0b72cb33ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_TIMER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a698ad4a75016d000d920378982f8b3f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DESCRIPTION_LIST</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a1e4ef7c6a1153bcb26700ea2527b5967</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DESCRIPTION_TERM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a4f281b31a47f58f26928c4722dc16ce3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_DESCRIPTION_VALUE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a07d8d327bcd58a01a91003c6c9e42594</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_STATIC</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a734952c6ba04ec0162ed3b1d952d6c64</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_MATH_FRACTION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a34023fd8176925431aa304cc1f701619</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_MATH_ROOT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27af60918fa4c53179e6126f0ca3bac1610</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SUBSCRIPT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27accad65056cdd6186b30f8105740cfd2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_SUPERSCRIPT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab49bc13be45410b0201b3c56c3afd16c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ROLE_LAST_DEFINED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac2a78ab956bc9edb48ef9c20e7fa4db2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>RelationType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_NULL</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5aaea69e742552ceb9f70ca4c56762d05a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_CONTROLLED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a8f1d7c5d76eb99c6ed3eea74d6789c81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_CONTROLLER_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5aa09d2699baa68435f052efcf1bdb31a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_LABEL_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a153737de310e5a2ff070673ee187f7dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_LABELLED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5adb9d3f6dbb3e8598b20a6efe0c6af7d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_MEMBER_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a9195c013a34f06909866cd10e52302ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_NODE_CHILD_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a64ca3d57229a1dcede942da0baa1ff4c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_FLOWS_TO</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a14a32c575c20ef9be12b998ebf52bbd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_FLOWS_FROM</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5aab5f947116ed0bafb94cecea3b7851ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_SUBWINDOW_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a3f6009fc7a13a44e843aac87b73aae03</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_EMBEDS</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a7921ea29aa8dde256edc277333b563bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_EMBEDDED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a22e96ad05c3f8dd8e17520f3c2b22821</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_POPUP_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5ab0a1b4ff1cc10c8d84041bf6559e26dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_PARENT_WINDOW_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a4a1ce2e70e857d0522c5b183f9f2a481</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_DESCRIBED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5ac43bc53510af247d9bbe572077d570d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_DESCRIPTION_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a6c391740d9e4be90f6ddc0956c9f5069</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_NODE_PARENT_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a2c4fb5c9ece0f6f750dbf4e97a17a276</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RELATION_LAST_DEFINED</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a6e2671b325cfee0566d5302bc58b983f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>StateType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga2b925d92032639815edcfd9b0f53d15e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_INVALID</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaf38c9a5ee701bd869fa693dde077ae94</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_ACTIVE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea3b96a8572f1fb31ba171e8eb76d44434</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_ARMED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea36f02ef2ddb01fcb26d33caa4896c7be</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_BUSY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea3d81e4407381a35205154904c27d4b07</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_CHECKED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea6a36533b9c0bcc4e1f34f461ff8cd137</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_DEFUNCT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaf15f11d7b48b1119169c80789a3ea6c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_EDITABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea35fcaac7746569ade7f7386832603de7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_ENABLED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea74d7172d6fd23d38d5627c00276c39fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_EXPANDABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eafc4c8c22b95953a4d65ee30827873c6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_EXPANDED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaef89a6238be3b2983589cea2c8e79eee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_FOCUSABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaa0021f2c26dba14838aff2420c8f4470</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_FOCUSED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea2a4d25fbbc37ecbdd0568fd1df6908a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_HORIZONTAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea19eec6e9b6278a938a80a69c845768bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_ICONIFIED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea854aab00b1fcfaeb21a3e3166e54bb71</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_MODAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea54d686d0481e36bdc4fcddf87631691b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_MULTI_LINE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea3cab9f3ac425aa5ba0c67e59f8794d43</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_MULTISELECTABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea590b7d91649336348d28f6f55c18cfbd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_OPAQUE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea9e46ab4b9bce571c2513a3be9b6b9604</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_PRESSED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea245197daf9437f95382b79396f48792a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_RESIZABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead336da6c742fc4ce3531aa97b74841f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_SELECTABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea8184260e7b2f204a489a1c80d9a1939b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_SELECTED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eacc45152c44f7cf29087c66bf17583410</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_SENSITIVE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae0c53804b335dd7d55e1a3ddbe12d76f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_SHOWING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea471306798894af3cd14ee19ec3aaef90</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_SINGLE_LINE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eab7dc583652460e80737563afad54c48c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_STALE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea0b03f4269d42f6413c7087181b8a37c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_TRANSIENT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eabb54a2722b9b213a699f35a09195afca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_VERTICAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eab9027e2efcc01b4aac8deb30e34fc0aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_VISIBLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea6aa787a91d66a1c8fea75c196febfc43</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_MANAGES_DESCENDANTS</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea5895f35295aeaa7cc86de41bf7cb2517</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_INDETERMINATE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae4b19682debcbeada8e9061b033bbd22</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_TRUNCATED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead1f2cb1d7770bb2c4549ef5b998cf21c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_REQUIRED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaeea37ea980f7cb90a79eed520bc635e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_INVALID_ENTRY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead23e93d50443d9192b13fc22aae4487a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_SUPPORTS_AUTOCOMPLETION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea728f19b8503f125626d40de2694eda0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_SELECTABLE_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eafbd1e0653faaedf8c0f2195155c53a71</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_DEFAULT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae6515e887af6dba27f3440f4077246a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_ANIMATED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae1676a444f17d437c39d2ea259bb0b30</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_VISITED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea4250cdc6e143fa21ffb33f5393b5d60b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_CHECKABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea7d7bf124cb47822589dbde80870b7b27</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_HAS_POPUP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea791201a6f5afbb03e45201a659051265</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_HAS_TOOLTIP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea459fd9dbe770234f46622b1a69171588</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_READ_ONLY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead4b696e61543f7a90b38237b1437efc1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STATE_LAST_DEFINED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea65bb8311dba662b7de5ca0fc6ab4ffe4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BuiltinTextAttribute</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_INVALID</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca4393ed56fb593f22ee075dc4581d9db8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_LEFT_MARGIN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca67cbd8d18bc7fb807e20229b1d0f99e4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_RIGHT_MARGIN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca551b2ff365879eabd66bdcaa864e4ad9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_INDENT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca50adc11f48692d9b23d371507f600225</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_INVISIBLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca880d8003ac815687ba99af21ee8cec7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_EDITABLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2b0ddb4f7bc3b4bce425b87dcff8ed4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_PIXELS_ABOVE_LINES</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca48ac0a116a5fdc042db71b13e9839d7d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_PIXELS_BELOW_LINES</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca06dcde87f48a8be8642a4f3002a14a32</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_PIXELS_INSIDE_WRAP</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cae09e4ac68d281f03be18cfba4d9242d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_BG_FULL_HEIGHT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cadc38e515b7f5f5f0ab35126bbd6431df</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_RISE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cab9677337963deacf0e48c3d63a1c3bcd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_UNDERLINE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca760a84ed12f79ac2bfe3197e7920d068</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_STRIKETHROUGH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca26153c0f6d6ef82097c77db72a0fe4ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_SIZE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2d788d8a602c4101277a21bc3cfe7692</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_SCALE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca241bb3a7d5894e022c31b1e7ec999ad5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_WEIGHT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca90aeac42fff0485c401317ae1e4bb9c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_LANGUAGE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca5ffc2296d8946e837ec97c2aa8920e97</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_FAMILY_NAME</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cae4645f62f1f3050a724a4b757dd577f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_BG_COLOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2308a7071ea3218f4d3d2bb103380d44</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_FG_COLOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca5458f5602d0e91aecea750041a8edd85</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_BG_STIPPLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca44d91b6dbf41e9450ba4fb9d35bc0f2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_FG_STIPPLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca6cae00beb0f5e16605e3ef707766eac2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_WRAP_MODE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca6a3fbcb7ca20694f6513765960887020</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_DIRECTION</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cae3c780c73c0b5a2dbe3c16c66fa50389</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_JUSTIFICATION</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca1f01b20943fb9312128ea5ce766e541a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_STRETCH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2e8447a43145c42d23989170b2e26f5b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_VARIANT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca68df24f66e0118d28dabf698ff818bf3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_STYLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca479a11bffb421f78e6bf815a924156d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_ATTR_LAST_DEFINED</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca3b2d4cd4cdd3d80823fa15f0fddbc1f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>TextBoundary</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_BOUNDARY_CHAR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba65305d733bc4705e831da676c3a26520</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_BOUNDARY_WORD_START</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5bad865707d937243ac537dffb1cda82304</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_BOUNDARY_WORD_END</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba992fb37d0244d12c11a5d5bcd8d92a21</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_BOUNDARY_SENTENCE_START</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba485adb69e874c74b60a516d2241467c0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_BOUNDARY_SENTENCE_END</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5bad773bd9ad0c9f7ce2d396a85dadc0b75</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_BOUNDARY_LINE_START</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5bae2048f4b5ec0b66ef621af3d580cc596</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_BOUNDARY_LINE_END</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba09cdac098f965ef4e071fac3abcacbbe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>TextClipType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_CLIP_NONE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102ade8a862f47abec6b56823c70e3a4a4da</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_CLIP_MIN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102a58c4fa68e5609570c2863a5ad4da6fde</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_CLIP_MAX</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102a9a276c95f68a11383418ccaddb43f371</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_CLIP_BOTH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102a7f4713e228f383976e3c657485d2ef05</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>TextGranularity</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_GRANULARITY_CHAR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157aca2ea04b20ebe20bae90db70c2c639ea40</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_GRANULARITY_WORD</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157acade65cb0fe228815ed2152a5d58662464</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_GRANULARITY_SENTENCE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157acad1adc708889ec62b7eef9d821a0b8c3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_GRANULARITY_LINE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157acade557abfce9073e9420685ea45b3eecb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TEXT_GRANULARITY_PARAGRAPH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157aca269af2bb0dc10181605736e4895c9044</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>a29ec8cc19a1bc9fcd00565da12583e1e</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>Glib</name>
    <filename>namespaceGlib.html</filename>
  </compound>
  <compound kind="group">
    <name>atkmmEnums</name>
    <title>atkmm Enums and Flags</title>
    <filename>group__atkmmEnums.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>Atk::Role</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga19e4dff08645ca208cdf524836a1be27</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_INVALID</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a03b7adf147abb99a34364887f60e2f54</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ACCEL_LABEL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a90fb348c65faa9edba2d4b12f57362b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ALERT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a751119ceaf56a7e1d498fd0865256db5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ANIMATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8bbdc9aa636a56d50e5b2252c4b71de1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ARROW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a4e32033a4a294decb90b75426efccd51</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_CALENDAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a729cc798f3a871420edf7b84e5fce29a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_CANVAS</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27acc1d1fb0dde94d186cd240de4c83fb2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_CHECK_BOX</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a99dc1127fad81abe98e54feadd8edaef</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_CHECK_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6e41d9ae82e9d619d8e2007de55a0d83</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_COLOR_CHOOSER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a28ea532fedc5f1492f55ee42ba0d110e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_COLUMN_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac562110645a30d7ffe3f0cc2414752a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_COMBO_BOX</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a249384b8d5b79299f62b88fc0d91e5ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DATE_EDITOR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aed6ca916b1d54f9bf12c058473c4e80f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DESKTOP_ICON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6c6f6aad475905b77817469b6bc9b04d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DESKTOP_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ada71f6f6bbca69523b8f05b9798101f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DIAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac949b07517c4f4eb51c43769daea900e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DIALOG</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a07c8c90ac361cc44215bc9a13cc9d63d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DIRECTORY_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afcf15a284444b646fed5b7a2c56f5f60</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DRAWING_AREA</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a2fa15e4f6b6410032087a98829e17904</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_FILE_CHOOSER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8d2b5f26392a637571fc3b0340aba1c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_FILLER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a9577893f52a7ca0d3c8097f8c36c4117</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_FONT_CHOOSER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a964762ebfbe131d0d43a531ba313a0d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8da375d17cefb5a54b15b3d94cc28f62</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_GLASS_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6ea3843b8201512a88a5efd20252092d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_HTML_CONTAINER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a4298c2d598ded8be2c8c263882af28c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ICON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6fe1b16f7cc09e7b2f18903658d9d3b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_IMAGE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac2730b9c7eaf67367ac3c0f078220be4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_INTERNAL_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a63411be70a6256c25661b36619f991b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LABEL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad9d6252511d4e87c47c34e7721a64718</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LAYERED_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac9e80d237b517896ae4c6a5d1ae69812</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LIST</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a976a583ee8932ede9a6e3386404ca163</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LIST_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27acf53a383aadfd934ee44868d1b894f04</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_MENU</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac2b15d7e6319620647912ebeba520ca2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_MENU_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a96956fae7c290317391e196997b73962</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a44d66448a05cac51943120a980ada0c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_OPTION_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a84919c9223cf1c1956bc63bab4a06f3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PAGE_TAB</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a30cdee73954df268b35ad60fc7af7853</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PAGE_TAB_LIST</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7b253b6220fcacf99d5d5cde334fdfab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PANEL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a93d64dd645e4a919bffd28187ad4d73c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PASSWORD_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac0050f6c421892b3f27d71432dc8d805</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_POPUP_MENU</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad64cf2b1b9bb4c135bc82c2d2150ce29</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PROGRESS_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0ee7ee60e2887834ed3c725e8a27e6b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PUSH_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a893358f2d67d103974775b66973c449f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_RADIO_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a063d6d55f8b92793e2f040014fce61b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_RADIO_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a8ed4fe61e40eb9110f80a643fc00be61</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ROOT_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a522edfb1bad8ea4e20cfff5b2d4a4b54</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ROW_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0673b83465635c405e96ff2319ab7768</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SCROLL_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa7dcad3ca39aa6cfe8e7e2cac8613ad6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SCROLL_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a77b4d9445e55372af979ca6e9bd3ea44</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SEPARATOR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a3c73d2fb94f28c3826c91971f105157a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SLIDER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a72284d576401425d7d9d25dc227418b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SPLIT_PANE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a854d707133a53c61d2a7f8abd51c662a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SPIN_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ae196510d3430ed6bd20c180cc20459d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_STATUSBAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aca33485bd1b36ab060e0ee40f0fb146f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a23a1885658083e4b711ba07e54c977a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TABLE_CELL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a37b8c0a0962de75d1c5543aee0c7f334</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TABLE_COLUMN_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab4e1a16cfa76e026959c6973b6d3065f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TABLE_ROW_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a764cac0e6c79835535c01068f3048f9b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TEAR_OFF_MENU_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0e7d46e59c365b1da54969745015f76a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TERMINAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a9a6bb25c658677bb58e1bda9828c1c2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aae92d12d274c258e1e16b02b1dfe72b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TOGGLE_BUTTON</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a3a9554aa8f05b3fd255e395a75e13a65</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TOOL_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a9e57841f611edac11ce5cb99886241ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TOOL_TIP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa486c34f56938cc27fa35ca7d3e08b63</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TREE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a63c6af1d80435c09ed5b450eb6604867</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TREE_TABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a16edf707b28f7c93009964498ae556d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_UNKNOWN</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a922437fd0b6fbddbf4f89f1733b8a280</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_VIEWPORT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa0c2aa0067292f8ad5e74bf77741d3a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_WINDOW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a2360eb9b8e8509c4002ddfee5a9d0add</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_HEADER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a1402405b5b60ac46a03ba9e1b330ee10</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_FOOTER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a3c73c67b2af4e6ad007608b6087728ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PARAGRAPH</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad2aebfb6550f478089da3c5a999270dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_RULER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7fb381b91ab96dafa1e6bd5895d01cb2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_APPLICATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27acbd3e3422a0c938be7d7321d3b81f368</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_AUTOCOMPLETE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27af63525acc7814e9502808813e87fa5b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_EDITBAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad2b191ec8ae853c6dd65f4878de54122</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_EMBEDDED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afe3884c520dcfbd0e8e24d1351175401</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ENTRY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27adbdabc7fa7498302460bd8037c2789eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_CHART</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aeb0574171eab9711dcd432e4f82e1146</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_CAPTION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a642a134eed486e055b8880a60f72f4ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DOCUMENT_FRAME</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a6815eb11edc3f47cc3ffe55a14c4308a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_HEADING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a78988aacdcea3f7f08a2e1d16e29cb12</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_PAGE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a1d1cd19b29d207ec9bd026ed23169425</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SECTION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a985d679f4284b48f3cb49bb2cb931a3c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_REDUNDANT_OBJECT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a18b9db38b50d1d36526a04cb839f8802</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_FORM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afcfaf66601c4630eb9d8cd52e1bb93c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LINK</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7cd3b449a443269a30a8176bd11597ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_INPUT_METHOD_WINDOW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7087be6665736ed5626110232b72e591</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TABLE_ROW</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a85e5571d7f42590c70da2826138e10a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TREE_ITEM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0929bf66fb02ff727e9ec90ba88436a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DOCUMENT_SPREADSHEET</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afdad04066fe7ecd1a438a07dad12984d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DOCUMENT_PRESENTATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0e2eb5a6b3d5ec4fd7b85028ea0f9cd2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DOCUMENT_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad437d1c0af8ac4382c3645b059a3c5a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DOCUMENT_WEB</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aaf8bb5440dcefd451aecdfefbc1dd25f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DOCUMENT_EMAIL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aca847b06edcf30ffdae5714fe2403fdb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_COMMENT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aff2f2f991f22f2fec8d17a01aeb3d9c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LIST_BOX</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a7c9ba8c94939f3cd9e897cf72be9ada3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_GROUPING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab705a38b371ef3fa9db7dbca92c868fe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_IMAGE_MAP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a60b619fe5eee23ddb8faa812f0528426</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_NOTIFICATION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a89a5954fa09c292ed2ac5c303a44b5b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_INFO_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27aa78f97904dd22f8c2315a2447213a17e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LEVEL_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afbd314cc3c14ca683861355c59daa65a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TITLE_BAR</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a0c8599152d2d4bab7943665ebd353c68</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_BLOCK_QUOTE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab14b366c2a0206384fb6cf098134793d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_AUDIO</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ade73b7b1b708d0426fb257524c8faea7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_VIDEO</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ade1aadbc70a285548c4986763c910341</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DEFINITION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad542b7a01f095909915e229d7287cfe9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_ARTICLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27abf754dd34add6748625086310d05dea6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LANDMARK</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a06a285cfa19f9d1d2bd6f82c91145591</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LOG</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a803f7511f98ed1955b1cfc0e16e4fb7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_MARQUEE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27afb44f84d3bfab6a6881a1462e5296696</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_MATH</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a5c18a5acfa9b97641452acd8537280be</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_RATING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ad0a9063c6d3bf4f279625a0b72cb33ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_TIMER</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a698ad4a75016d000d920378982f8b3f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DESCRIPTION_LIST</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a1e4ef7c6a1153bcb26700ea2527b5967</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DESCRIPTION_TERM</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a4f281b31a47f58f26928c4722dc16ce3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_DESCRIPTION_VALUE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a07d8d327bcd58a01a91003c6c9e42594</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_STATIC</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a734952c6ba04ec0162ed3b1d952d6c64</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_MATH_FRACTION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27a34023fd8176925431aa304cc1f701619</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_MATH_ROOT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27af60918fa4c53179e6126f0ca3bac1610</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SUBSCRIPT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27accad65056cdd6186b30f8105740cfd2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_SUPERSCRIPT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ab49bc13be45410b0201b3c56c3afd16c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::ROLE_LAST_DEFINED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga19e4dff08645ca208cdf524836a1be27ac2a78ab956bc9edb48ef9c20e7fa4db2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::StateType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga2b925d92032639815edcfd9b0f53d15e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_INVALID</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaf38c9a5ee701bd869fa693dde077ae94</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_ACTIVE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea3b96a8572f1fb31ba171e8eb76d44434</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_ARMED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea36f02ef2ddb01fcb26d33caa4896c7be</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_BUSY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea3d81e4407381a35205154904c27d4b07</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_CHECKED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea6a36533b9c0bcc4e1f34f461ff8cd137</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_DEFUNCT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaf15f11d7b48b1119169c80789a3ea6c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_EDITABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea35fcaac7746569ade7f7386832603de7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_ENABLED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea74d7172d6fd23d38d5627c00276c39fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_EXPANDABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eafc4c8c22b95953a4d65ee30827873c6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_EXPANDED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaef89a6238be3b2983589cea2c8e79eee</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_FOCUSABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaa0021f2c26dba14838aff2420c8f4470</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_FOCUSED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea2a4d25fbbc37ecbdd0568fd1df6908a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_HORIZONTAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea19eec6e9b6278a938a80a69c845768bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_ICONIFIED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea854aab00b1fcfaeb21a3e3166e54bb71</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_MODAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea54d686d0481e36bdc4fcddf87631691b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_MULTI_LINE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea3cab9f3ac425aa5ba0c67e59f8794d43</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_MULTISELECTABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea590b7d91649336348d28f6f55c18cfbd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_OPAQUE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea9e46ab4b9bce571c2513a3be9b6b9604</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_PRESSED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea245197daf9437f95382b79396f48792a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_RESIZABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead336da6c742fc4ce3531aa97b74841f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_SELECTABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea8184260e7b2f204a489a1c80d9a1939b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_SELECTED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eacc45152c44f7cf29087c66bf17583410</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_SENSITIVE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae0c53804b335dd7d55e1a3ddbe12d76f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_SHOWING</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea471306798894af3cd14ee19ec3aaef90</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_SINGLE_LINE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eab7dc583652460e80737563afad54c48c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_STALE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea0b03f4269d42f6413c7087181b8a37c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_TRANSIENT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eabb54a2722b9b213a699f35a09195afca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_VERTICAL</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eab9027e2efcc01b4aac8deb30e34fc0aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_VISIBLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea6aa787a91d66a1c8fea75c196febfc43</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_MANAGES_DESCENDANTS</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea5895f35295aeaa7cc86de41bf7cb2517</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_INDETERMINATE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae4b19682debcbeada8e9061b033bbd22</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_TRUNCATED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead1f2cb1d7770bb2c4549ef5b998cf21c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_REQUIRED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eaeea37ea980f7cb90a79eed520bc635e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_INVALID_ENTRY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead23e93d50443d9192b13fc22aae4487a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_SUPPORTS_AUTOCOMPLETION</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea728f19b8503f125626d40de2694eda0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_SELECTABLE_TEXT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eafbd1e0653faaedf8c0f2195155c53a71</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_DEFAULT</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae6515e887af6dba27f3440f4077246a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_ANIMATED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15eae1676a444f17d437c39d2ea259bb0b30</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_VISITED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea4250cdc6e143fa21ffb33f5393b5d60b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_CHECKABLE</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea7d7bf124cb47822589dbde80870b7b27</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_HAS_POPUP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea791201a6f5afbb03e45201a659051265</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_HAS_TOOLTIP</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea459fd9dbe770234f46622b1a69171588</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_READ_ONLY</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ead4b696e61543f7a90b38237b1437efc1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::STATE_LAST_DEFINED</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gga2b925d92032639815edcfd9b0f53d15ea65bb8311dba662b7de5ca0fc6ab4ffe4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::CoordType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga6c71d0aa1d2e5c4917bafa3f12c811c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::XY_SCREEN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga6c71d0aa1d2e5c4917bafa3f12c811c2aa246376eca3cdb374c574453250a4336</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::XY_WINDOW</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga6c71d0aa1d2e5c4917bafa3f12c811c2a78407bda2cc3f1c147122444c25fd5f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::Layer</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_INVALID</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8acf2786bd78e626ae5cac62cbb242aca5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_BACKGROUND</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8af8efa268dabe1427fa3dd54ec999b2c5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_CANVAS</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a588a466c418c517682e75e6e8ac85a58</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_WIDGET</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a9c3733f145046c38b8b005ef15b8a612</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_MDI</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8ae938ba516f83b2acd3aed22d1800125a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_POPUP</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a197da9454716789673a749d3da413246</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_OVERLAY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a5c54d68cbdf6469bc34d9f2294b3b329</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::LAYER_WINDOW</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga880a348fd3270c7bca549113c38501a8a9d942a39ce64fc9f276b5381a72fd2da</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::RelationType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_NULL</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5aaea69e742552ceb9f70ca4c56762d05a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_CONTROLLED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a8f1d7c5d76eb99c6ed3eea74d6789c81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_CONTROLLER_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5aa09d2699baa68435f052efcf1bdb31a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_LABEL_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a153737de310e5a2ff070673ee187f7dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_LABELLED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5adb9d3f6dbb3e8598b20a6efe0c6af7d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_MEMBER_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a9195c013a34f06909866cd10e52302ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_NODE_CHILD_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a64ca3d57229a1dcede942da0baa1ff4c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_FLOWS_TO</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a14a32c575c20ef9be12b998ebf52bbd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_FLOWS_FROM</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5aab5f947116ed0bafb94cecea3b7851ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_SUBWINDOW_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a3f6009fc7a13a44e843aac87b73aae03</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_EMBEDS</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a7921ea29aa8dde256edc277333b563bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_EMBEDDED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a22e96ad05c3f8dd8e17520f3c2b22821</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_POPUP_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5ab0a1b4ff1cc10c8d84041bf6559e26dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_PARENT_WINDOW_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a4a1ce2e70e857d0522c5b183f9f2a481</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_DESCRIBED_BY</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5ac43bc53510af247d9bbe572077d570d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_DESCRIPTION_FOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a6c391740d9e4be90f6ddc0956c9f5069</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_NODE_PARENT_OF</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a2c4fb5c9ece0f6f750dbf4e97a17a276</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::RELATION_LAST_DEFINED</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga83c3f0442ea6f73e32064b0caab555e5a6e2671b325cfee0566d5302bc58b983f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::BuiltinTextAttribute</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_INVALID</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca4393ed56fb593f22ee075dc4581d9db8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_LEFT_MARGIN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca67cbd8d18bc7fb807e20229b1d0f99e4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_RIGHT_MARGIN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca551b2ff365879eabd66bdcaa864e4ad9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_INDENT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca50adc11f48692d9b23d371507f600225</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_INVISIBLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca880d8003ac815687ba99af21ee8cec7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_EDITABLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2b0ddb4f7bc3b4bce425b87dcff8ed4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_PIXELS_ABOVE_LINES</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca48ac0a116a5fdc042db71b13e9839d7d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_PIXELS_BELOW_LINES</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca06dcde87f48a8be8642a4f3002a14a32</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_PIXELS_INSIDE_WRAP</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cae09e4ac68d281f03be18cfba4d9242d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_BG_FULL_HEIGHT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cadc38e515b7f5f5f0ab35126bbd6431df</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_RISE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cab9677337963deacf0e48c3d63a1c3bcd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_UNDERLINE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca760a84ed12f79ac2bfe3197e7920d068</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_STRIKETHROUGH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca26153c0f6d6ef82097c77db72a0fe4ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_SIZE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2d788d8a602c4101277a21bc3cfe7692</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_SCALE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca241bb3a7d5894e022c31b1e7ec999ad5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_WEIGHT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca90aeac42fff0485c401317ae1e4bb9c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_LANGUAGE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca5ffc2296d8946e837ec97c2aa8920e97</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_FAMILY_NAME</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cae4645f62f1f3050a724a4b757dd577f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_BG_COLOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2308a7071ea3218f4d3d2bb103380d44</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_FG_COLOR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca5458f5602d0e91aecea750041a8edd85</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_BG_STIPPLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca44d91b6dbf41e9450ba4fb9d35bc0f2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_FG_STIPPLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca6cae00beb0f5e16605e3ef707766eac2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_WRAP_MODE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca6a3fbcb7ca20694f6513765960887020</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_DIRECTION</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389cae3c780c73c0b5a2dbe3c16c66fa50389</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_JUSTIFICATION</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca1f01b20943fb9312128ea5ce766e541a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_STRETCH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca2e8447a43145c42d23989170b2e26f5b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_VARIANT</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca68df24f66e0118d28dabf698ff818bf3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_STYLE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca479a11bffb421f78e6bf815a924156d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_ATTR_LAST_DEFINED</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga570689825e833a547382a99c553e389ca3b2d4cd4cdd3d80823fa15f0fddbc1f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::TextBoundary</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_BOUNDARY_CHAR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba65305d733bc4705e831da676c3a26520</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_BOUNDARY_WORD_START</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5bad865707d937243ac537dffb1cda82304</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_BOUNDARY_WORD_END</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba992fb37d0244d12c11a5d5bcd8d92a21</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_BOUNDARY_SENTENCE_START</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba485adb69e874c74b60a516d2241467c0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_BOUNDARY_SENTENCE_END</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5bad773bd9ad0c9f7ce2d396a85dadc0b75</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_BOUNDARY_LINE_START</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5bae2048f4b5ec0b66ef621af3d580cc596</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_BOUNDARY_LINE_END</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>gace98a3ea010fe92c359fa4bcd4aaea5ba09cdac098f965ef4e071fac3abcacbbe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::TextClipType</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_CLIP_NONE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102ade8a862f47abec6b56823c70e3a4a4da</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_CLIP_MIN</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102a58c4fa68e5609570c2863a5ad4da6fde</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_CLIP_MAX</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102a9a276c95f68a11383418ccaddb43f371</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_CLIP_BOTH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga0b25ada8fc7111dfed7f6550a6874102a7f4713e228f383976e3c657485d2ef05</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Atk::TextGranularity</name>
      <anchorfile>group__atkmmEnums.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_GRANULARITY_CHAR</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157aca2ea04b20ebe20bae90db70c2c639ea40</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_GRANULARITY_WORD</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157acade65cb0fe228815ed2152a5d58662464</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_GRANULARITY_SENTENCE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157acad1adc708889ec62b7eef9d821a0b8c3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_GRANULARITY_LINE</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157acade557abfce9073e9420685ea45b3eecb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Atk::TEXT_GRANULARITY_PARAGRAPH</name>
      <anchorfile>namespaceAtk.html</anchorfile>
      <anchor>ga19fa84ea5f7567a68ebe784b9d3157aca269af2bb0dc10181605736e4895c9044</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="dir">
    <name>atkmm</name>
    <path>atkmm/</path>
    <filename>dir_89e780aa0ad3e314ed81f239ae1c1610.html</filename>
    <file>action.h</file>
    <file>component.h</file>
    <file>document.h</file>
    <file>editabletext.h</file>
    <file>hyperlink.h</file>
    <file>hypertext.h</file>
    <file>image.h</file>
    <file>implementor.h</file>
    <file>noopobject.h</file>
    <file>object.h</file>
    <file>objectaccessible.h</file>
    <file>range.h</file>
    <file>relation.h</file>
    <file>relationset.h</file>
    <file>selection.h</file>
    <file>stateset.h</file>
    <file>streamablecontent.h</file>
    <file>table.h</file>
    <file>text.h</file>
    <file>value.h</file>
  </compound>
  <compound kind="dir">
    <name>atkmm</name>
    <path>atkmm/</path>
    <filename>dir_d01f27150adeb2dc2633126ed98441af.html</filename>
    <file>init.h</file>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>atkmm Reference Manual</title>
    <filename>index.html</filename>
    <docanchor file="index.html" title="Description">description</docanchor>
    <docanchor file="index.html" title="Basic usage">basics</docanchor>
  </compound>
</tagfile>
