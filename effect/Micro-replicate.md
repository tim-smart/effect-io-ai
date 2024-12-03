# replicate

Replicates the given effect `n` times.

To import and use `replicate` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.replicate
```

**Signature**

```ts
export declare const replicate: {
  (n: number): <A, E, R>(self: Micro<A, E, R>) => Array<Micro<A, E, R>>
  <A, E, R>(self: Micro<A, E, R>, n: number): Array<Micro<A, E, R>>
}
```
