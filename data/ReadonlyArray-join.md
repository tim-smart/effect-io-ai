# join

Joins the elements together with "sep" in the middle.

To import and use `join` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.join
```

**Signature**

```ts
export declare const join: {
  (sep: string): (self: Iterable<string>) => string
  (self: Iterable<string>, sep: string): string
}
```
