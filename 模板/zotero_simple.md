> [!info] Bibliography
> {{bibliography|replace("\n"," ")}}
## Information

| Key          |                                   Value                                   |
| :----------- | :-----------------------------------------------------------------------: |
| Date         |                  {% if date %}                    {{date                  | format("YYYY-MM")}} {% endif %} |
| Author       |                         {{authors}}{{directors}}                          |
| Contributors |                             {{contributors}}                              |
| Tags         |                           {{hashTags}}, #zotero, #文献笔记                         |
| Journal      |                            #{{publicationTitle                            | replace(" ","-")}}              |
| DOI          |                            [{{DOI}}]({{url}})                             |
| Extra        |                                  {{extra                                  | replace("\n","\t")}}            |
| Type         |                           {{type}} {{itemType}}                           |
| Publisher    |                               {{publisher}}                               |
| Others       | {{archiveLocation}}    {{libraryCatalog}}    {{rights}}    {{callNumber}} |
| Zotero Link  |                             {{pdfZoteroLink}}                             |

> [!abstract]
> {{abstractNote}}

## Notes
{% persist "Obsidian-Notes" %}
{% endpersist %}