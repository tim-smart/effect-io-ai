# updateWith

A variant of `update` that allows specifying the function that will be used
to combine old values with new values.

To import and use `updateWith` from the "Differ" module:

```ts
import * as Differ from "effect/Differ"
// Can be accessed like this
Differ.updateWith
```

**Signature**

```ts
export declare const updateWith: <A>(f: (x: A, y: A) => A) => Differ<A, (a: A) => A>
```
