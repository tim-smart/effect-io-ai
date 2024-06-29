# when

The moral equivalent of `if (p) exp`.

To import and use `when` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.when
```

**Signature**

```ts
export declare const when: {
  <E2 = never, R2 = never>(
    condition: LazyArg<boolean> | Micro<boolean, E2, R2>
  ): <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, E2 | E, R2 | R>
  <A, E, R, E2 = never, R2 = never>(
    self: Micro<A, E, R>,
    condition: LazyArg<boolean> | Micro<boolean, E2, R2>
  ): Micro<Option.Option<A>, E | E2, R | R2>
}
```
