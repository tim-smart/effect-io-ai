# split

Splits this iterable into `n` equally sized arrays.

To import and use `split` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.split
```

**Signature**

```ts
export declare const split: { (n: number): <A>(self: Iterable<A>) => A[][]; <A>(self: Iterable<A>, n: number): A[][] }
```
