# promise

Wrap a `Promise` into a `Micro` effect. Any errors will result in a
`CauseDie`.

To import and use `promise` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.promise
```

**Signature**

```ts
export declare const promise: <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>) => Micro<A>
```
