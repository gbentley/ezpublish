{* Window controls. *}
<div class="menu-block">
<ul>
    {* Content preview. *}
    {section show=ezpreference( 'admin_navigation_content' )}
    <li class="enabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_content/0'|ezurl} title="{'Hide preview of content.'|i18n( 'design/admin/node/view/full' )}">{'Preview'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {section-else}
    <li class="disabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_content/1'|ezurl} title="{'Show preview of content.'|i18n( 'design/admin/node/view/full' )}">{'Preview'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {/section}

    {* Additional information. *}
    {section show=ezpreference( 'admin_navigation_information' )}
    <li class="enabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_information/0'|ezurl} title="{'Hide additional information.'|i18n( 'design/admin/node/view/full' )}">{'Information'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {section-else}
    <li class="disabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_information/1'|ezurl} title="{'Show additional information.'|i18n( 'design/admin/node/view/full' )}">{'Information'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {/section}

    {* Translations. *}
    {section show=ezpreference( 'admin_navigation_translations' )}
    <li class="enabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_translations/0'|ezurl} title="{'Hide available translations.'|i18n( 'design/admin/node/view/full' )}">{'Translations'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    {section-else}
    <li class="disabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_translations/1'|ezurl} title="{'Show available translations.'|i18n( 'design/admin/node/view/full' )}">{'Translations'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {/section}

    {* Locations. *}
    {section show=ezpreference( 'admin_navigation_locations' )}
    <li class="enabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_locations/0'|ezurl} title="{'Hide location overview.'|i18n( 'design/admin/node/view/full' )}">{'Locations'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {section-else}
    <li class="disabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_locations/1'|ezurl} title="{'Show location overview.'|i18n('design/admin/node/view/full')}">{'Locations'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {/section}

    {* Relations. *}
    {section show=ezpreference( 'admin_navigation_relations' )}
    <li class="enabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_relations/0'|ezurl} title="{'Hide relation overview.'|i18n( 'design/admin/node/view/full' )}">{'Relations'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {section-else}
    <li class="disabled">
    <div class="button-bc"><div class="button-tl"><div class="button-tr"><div class="button-br">
        <a href={'/user/preferences/set/admin_navigation_relations/1'|ezurl} title="{'Show relation overview.'|i18n( 'design/admin/node/view/full' )}">{'Relations'|i18n( 'design/admin/node/view/full' )}</a>
    </div></div></div></div>
    </li>
    {/section}
</ul>

<div class="break"></div>

</div>
