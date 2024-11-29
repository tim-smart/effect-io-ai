# zip

Combine two `Micro` effects into a single effect that produces a tuple of
their results.

To import and use `zip` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.zip
undefined

**Signature**

```ts
export declare const zip: {
  <A2, E2, R2>(
    that: Micro<A2, E2, R2>,
    options?: { readonly concurrent?: boolean | undefined } | undefined
  ): <A, E, R>(self: Micro<A, E, R>) => Micro<[A, A2], E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Micro<A, E, R>,
    that: Micro<A2, E2, R2>,
    options?: { readonly concurrent?: boolean | undefined }
  ): Micro<[A, A2], E | E2, R | R2>
}
```
