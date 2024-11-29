# sync

Creates a `Micro` effect that will succeed with the lazily evaluated value.

If the evaluation of the value throws an error, the effect will fail with
`CauseDie`.

To import and use `sync` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.sync
undefined

**Signature**

```ts
export declare const sync: <A>(evaluate: LazyArg<A>) => Micro<A>
```
