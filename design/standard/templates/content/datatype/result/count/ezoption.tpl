{let contentobject_attribute_id=cond($attribute|get_class|eq('ezinformationcollectionattribute'),$attribute.contentobject_attribute_id,
                                     $attribute|get_class|eq('ezcontentobjectattribute'),$attribute.id)
     contentobject_attribute=cond($attribute|get_class|eq('ezinformationcollectionattribute'),$attribute.contentobject_attribute,
			          $attribute|get_class|eq('ezcontentobjectattribute'),$attribute)
     total_count=fetch('content','collected_info_count', hash( 'object_attribute_id', $contentobject_attribute_id ) )
     item_counts=fetch('content','collected_info_count_list', hash( 'object_attribute_id', $contentobject_attribute_id  ) ) }

{$contentobject_attribute.content.name}

<table cellspacing="0">
<tr>

{section name=Option loop=$contentobject_attribute.content.option_list}
    {let item_count=0}
    {section show=is_set($item_counts[$:item.id])}
        {set item_count=$item_counts[$:item.id]}
    {/section}
    <td>
        {$:item.value}
    </td>
    <td>
        <table width="300">
        <tr>
            <td bgcolor="ffff00" width="{div(mul($:item_count,300),$total_count)}">
                &nbsp;
            </td>
            <td bgcolor="eeeeee" width="{sub(300,div(mul($:item_count,300),$total_count))}">
    
            </td>
        </tr>
        </table>
    </td>
    <td>
        {$:item_count} / <i>{div(mul($:item_count,100),$total_count)}%</i>
    </td>
    {/let}

    {delimiter}
</tr>
<tr>
    {/delimiter}

{/section}
</tr>
</table>

{/let}
