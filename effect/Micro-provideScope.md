# provideScope

Provide a `MicroScope` to an effect.

To import and use `provideScope` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.provideScope
```

**Signature**

```ts
export declare const provideScope: {
  (scope: MicroScope): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, Exclude<R, MicroScope>>
  <A, E, R>(self: Micro<A, E, R>, scope: MicroScope): Micro<A, E, Exclude<R, MicroScope>>
}
```
