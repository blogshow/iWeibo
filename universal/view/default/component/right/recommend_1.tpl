<!--{if $component.contents}-->
<div class="toggle" title='<!--{$component.title|escape:"html"}-->'><!--{$component.title|escape:"html"|itruncate:33}--></div>
<ul class="userlist">
    <!--{foreach key=account item=item from=$component.contents name=thisloop}-->
    <li <!--{if $smarty.foreach.thisloop.last}-->class="last"<!--{/if}-->>
        <p><a title='<!--{$item.nick|escape:"html"}-->(@<!--{$item.name|escape:"html"}-->)' href="/u/<!--{$account|iurlencode}-->" target="_blank"><img title='<!--{$item.nick|escape:"html"}-->(@<!--{$item.name|escape:"html"}-->)' width="50" height="50" src="<!--{if $item.head}--><!--{$item.head}-->/50<!--{else}-->http://mat1.gtimg.com/www/mb/images/head_50.jpg<!--{/if}-->" /></a></p>
        <h3><a title='<!--{$item.nick|escape:"html"}-->(@<!--{$item.name|escape:"html"}-->)' href="/u/<!--{$account|iurlencode}-->"><!--{$item.nick|escape:"html"}--></a></h3>
        <div><!--{if $item.name != $username}--><a data-group="1" title='收听' data-name='<!--{$item.name|escape:"html"}-->' href="javascript:void(0);" data-type="<!--{if $item.isidol}-->0<!--{else}-->1<!--{/if}-->" data-styleid="1" class="iwbFollowControl follow"></a><!--{/if}--></div>
    </li>
    <!--{/foreach}-->
</ul>
<!--{/if}-->