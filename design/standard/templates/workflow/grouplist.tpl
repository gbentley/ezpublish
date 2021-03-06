{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<form action={concat($module.functions.grouplist.uri)|ezurl} method="post" name="GroupList">

<div class="maincontentheader">
<h1>{"Workflow groups"|i18n("design/standard/workflow")}</h1>
</div>

<table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
    <th>{"Name"|i18n("design/standard/workflow")}</th>
    <th width="1">{"Edit"|i18n("design/standard/workflow")}</th>
    <th width="1">{"Remove"|i18n("design/standard/workflow")}</th>
</tr>

{section name=Groups loop=$groups sequence=array(bglight,bgdark)}
<tr>
    <td class="{$Groups:sequence}">
      <a href={concat($module.functions.workflowlist.uri,"/",$Groups:item.id)|ezurl}>{$Groups:item.name}</a>
    </td>
    <td class="{$Groups:sequence}">
      <div class="listbutton"><a href={concat($module.functions.groupedit.uri,"/",$Groups:item.id)|ezurl}><img name="edit" src={"edit.gif"|ezimage} width="16" height="16" alt="{'Edit'|i18n('design/standard/workflow')}" title="{'Edit workflow'|i18n('design/standard/workflow')}" /></a></div>
    </td>
    <td class="{$Groups:sequence}" width="1" align="right">
      <input type="checkbox" name="ContentClass_id_checked[]" value="{$Groups:item.id}">
    </td>
</tr>
{/section}
<tr>
  <td colspan="2">
    {include uri="design:gui/button.tpl" name=newgroup id_name=NewGroupButton value="New group"|i18n("design/standard/workflow")}
  </td>
  <td align="right">
    <input type="image" name="DeleteGroupButton" value="{'Remove'|i18n('design/standard/workflow')}"  title="{'Remove selected workflows'|i18n('design/standard/workflow')}" src={"trash.png"|ezimage} />
  </td>
</tr>
</table>

<div class="buttonblock">
</div>

</form>
