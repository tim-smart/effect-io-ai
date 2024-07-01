# provideServiceEffect

Create a service using the provided `Micro` effect, and add it to the
current context.

To import and use `provideServiceEffect` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.provideServiceEffect
```

**Signature**

```ts
export declare const provideServiceEffect: {
  <I, S, E2, R2>(
    tag: Context.Tag<I, S>,
    acquire: Micro<S, E2, R2>
  ): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E2 | E, R2 | Exclude<R, I>>
  <A, E, R, I, S, E2, R2>(
    self: Micro<A, E, R>,
    tag: Context.Tag<I, S>,
    acquire: Micro<S, E2, R2>
  ): Micro<A, E | E2, R2 | Exclude<R, I>>
}
```
