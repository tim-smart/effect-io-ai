# ExtractTag

Extracts the type of the given tag.

To import and use `ExtractTag` from the "Types" module:

```ts
import * as Types from '@effect/data/Types'

// Can be accessed like this
Types.ExtractTag
```

**Example**

```ts
import * as Types from '@effect/data/Types'

type Res = Types.ExtractTag<{ _tag: 'a'; a: number } | { _tag: 'b'; b: number }, 'b'> // { _tag: "b", b: number }
```
