# ExcludeTag

Excludes the tagged object from the type.

To import and use `ExcludeTag` from the "Types" module:

```ts
import * as Types from 'effect/Types'

// Can be accessed like this
Types.ExcludeTag
```

**Example**

```ts
import * as Types from 'effect/Types'

type Res = Types.ExcludeTag<string | { _tag: 'a' } | { _tag: 'b' }, 'a'> // string | { _tag: "b" }
```
