{default collection=cond( $collection_id, fetch( content, collected_info_collection, hash( collection_id, $collection_id ) ),
                          fetch( content, collected_info_collection, hash( contentobject_id, $node.contentobject_id ) ) )}

{set-block scope=global variable=title}{'Form %formname'|i18n( 'design/admin/content/collectedinfo/form',, hash( '%formname', $node.name ) )|wash}{/set-block}

{section show=and( $error, $error_existing_data )}
<div class="message-warning">
    <p>{'You have already submitted data to this form. The previously submitted data was the following.'|i18n( 'design/admin/content/collectedinfo/form' )}</p>
</div>
{/section}

<div class="context-block">

{* DESIGN: Header START *}<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">

<h1 class="context-title">{'Collected information'|i18n( 'design/admin/content/collectedinfo/form' )}&nbsp;({$object.name|wash})</h1>

{* DESIGN: Mainline *}<div class="header-mainline"></div>

{* DESIGN: Header END *}</div></div></div></div></div></div>

{* DESIGN: Content START *}<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-bl"><div class="box-br"><div class="box-content">

<div class="context-attributes">

    {section var=CollectedAttributes loop=$collection.attributes}
        <div class="block">
            <label>{$CollectedAttributes.item.contentclass_attribute_name}:</label>
            {attribute_result_gui view=info attribute=$CollectedAttributes.item}
        </div>
    {/section}

    <hr />
    <a href={$node.parent.url|ezurl}>{'Back'|i18n( 'design/admin/content/collectedinfo/form' )}</a>

</div>

{* DESIGN: Content END *}</div></div></div></div></div></div>

</div>

{/default}
