# mapError

Maps over the error contained in the `Failure` of the specified exit using
the provided function.

To import and use `mapError` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.mapError
```

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (e: E) => E2): <A>(self: Exit<E, A>) => Exit<E2, A>
  <E, A, E2>(self: Exit<E, A>, f: (e: E) => E2): Exit<E2, A>
}
```
