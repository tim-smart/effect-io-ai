# GroupBy

Representation of a grouped stream. This allows to filter which groups will
be processed. Once this is applied all groups will be processed in parallel
and the results will be merged in arbitrary order.

To import and use `GroupBy` from the "GroupBy" module:

```ts
import * as GroupBy from 'effect/GroupBy'

// Can be accessed like this
GroupBy.GroupBy
```
