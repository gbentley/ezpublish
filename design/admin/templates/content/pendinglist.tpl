{let item_type=ezpreference( 'items' )
     number_of_items=min( $item_type, 3)|choose( 10, 10, 25, 50 )
     list_count=fetch( content, pending_count )
     pending_list=fetch( content, pending_list, hash( limit, $number_of_items, offset, $view_parameters.offset ) )}

<div class="context-block">
{* DESIGN: Header START *}<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">
<h1 class="context-title">{'My pending list [%pending_count]'|i18n( 'design/admin/content/pendinglist',, hash( '%pending_count', $pending_list|count ) )}</h1>

{* DESIGN: Mainline *}<div class="header-mainline"></div>

{* DESIGN: Header END *}</div></div></div></div></div></div>

{* DESIGN: Content START *}<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-bl"><div class="box-br"><div class="box-content">

{section show=$pending_list}
{* Items per page and view mode selector. *}
<div class="context-toolbar">
<div class="block">
<div class="left">
    <p>
    {switch match=$number_of_items}
    {case match=25}
        <a href={'/user/preferences/set/items/1'|ezurl}>10</a>
        <span class="current">25</span>
        <a href={'/user/preferences/set/items/3'|ezurl}>50</a>

        {/case}

        {case match=50}
        <a href={'/user/preferences/set/items/1'|ezurl}>10</a>
        <a href={'/user/preferences/set/items/2'|ezurl}>25</a>
        <span class="current">50</span>
        {/case}

        {case}
        <span class="current">10</span>
        <a href={'/user/preferences/set/items/2'|ezurl}>25</a>
        <a href={'/user/preferences/set/items/3'|ezurl}>50</a>
        {/case}

        {/switch}
    </p>
</div>
</div>
</div>

<table class="list" cellspacing="0">
<tr>
    <th>{'Name'|i18n( 'design/admin/content/pendinglist' )}</th>
    <th>{'Type'|i18n( 'design/admin/content/pendinglist' )}</th>
    <th>{'Section'|i18n( 'design/admin/content/pendinglist' )}</th>
    <th>{'Version'|i18n( 'design/admin/content/pendinglist' )}</th>
    <th>{'Modified'|i18n( 'design/admin/content/pendinglist' )}</th>
</tr>

{section var=PendingItems loop=$pending_list sequence=array(bglight,bgdark)}
<tr class="{$PendingItems.sequence}">
    <td>{$PendingItems.item.contentobject.content_class.identifier|class_icon( small, $PendingItems.item.contentobject.content_class.name )}&nbsp;<a href={concat( '/content/versionview/', $PendingItems.item.contentobject.id, '/', $PendingItems.item.version, '/' )|ezurl}>{$PendingItems.item.contentobject.name|wash}</a></td>
    <td>{$PendingItems.item.contentobject.content_class.name|wash}</td>
    <td>{fetch( section, object, hash( section_id, $PendingItems.item.contentobject.section_id ) ).name|wash}</td>
    <td>{$PendingItems.item.version}</td>
    <td>{$PendingItems.item.modified|l10n( shortdatetime )}</td>
</tr>
{/section}
</table>

<div class="context-toolbar">
{include name=navigator
         uri='design:navigator/google.tpl'
         page_uri='/content/pendinglist'
         item_count=$list_count
         view_parameters=$view_parameters
         item_limit=$number_of_items}
</div>

{section-else}

<p>{'The pending list is empty.'|i18n( 'design/admin/content/pendinglist' )}</p>

{/section}

{* DESIGN: Content END *}</div></div></div></div></div></div>

</div>
