{section show=$attribute|get_class|eq('ezinformationcollectionattribute')}

{section show=is_set($attribute.contentobject_attribute.content.option_list[$:attribute.data_int])}
    {$attribute.contentobject_attribute.content.option_list[$:attribute.data_int].value}
{section-else}
    {'No value chosen'|i18n('design/standard/content/ezoption')}
{/section}

{/section}
