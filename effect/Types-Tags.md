# Tags

Returns the tags in a type.

To import and use `Tags` from the "Types" module:

```ts
import * as Types from 'effect/Types'

// Can be accessed like this
Types.Tags
```

**Example**

```ts
import * as Types from 'effect/Types'

type Res = Types.Tags<string | { _tag: 'a' } | { _tag: 'b' }> // "a" | "b"
```
