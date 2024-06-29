# group

Group equal, consecutive elements of an `Iterable` into `NonEmptyArray`s.

To import and use `group` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.group
```

**Signature**

```ts
export declare const group: <A>(self: Iterable<A>) => Iterable<[A, ...A[]]>
```
