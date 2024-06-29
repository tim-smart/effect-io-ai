# mapBoth

Maps over the `Success` and `Failure` cases of the specified exit using the
provided functions.

To import and use `mapBoth` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.mapBoth
```

**Signature**

```ts
export declare const mapBoth: {
  <E, A, E2, A2>(options: {
    readonly onFailure: (e: E) => E2
    readonly onSuccess: (a: A) => A2
  }): (self: Exit<A, E>) => Exit<A2, E2>
  <A, E, E2, A2>(
    self: Exit<A, E>,
    options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2 }
  ): Exit<A2, E2>
}
```
