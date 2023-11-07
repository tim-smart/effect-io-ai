# includes

Returns `true` if `searchString` appears as a substring of `self`, at one or more positions that are
greater than or equal to `position`; otherwise, returns `false`.

To import and use `includes` from the "String" module:

```ts
import * as String from 'effect/String'

// Can be accessed like this
String.includes
```

**Signature**

```ts
export declare const includes: (searchString: string, position?: number) => (self: string) => boolean
```
