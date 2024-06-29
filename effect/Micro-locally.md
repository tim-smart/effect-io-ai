# locally

Set the value of the given `EnvRef` for the duration of the effect.

To import and use `locally` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.locally
```

**Signature**

```ts
export declare const locally: {
  <A>(fiberRef: EnvRef<A>, value: A): <XA, E, R>(self: Micro<XA, E, R>) => Micro<XA, E, R>
  <XA, E, R, A>(self: Micro<XA, E, R>, fiberRef: EnvRef<A>, value: A): Micro<XA, E, R>
}
```
