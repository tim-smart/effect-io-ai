# mapBoth

Maps over the `Success` and `Failure` cases of the specified exit using the
provided functions.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const mapBoth: {
  <E, A, E2, A2>(onFailure: (e: E) => E2, onSuccess: (a: A) => A2): (self: Exit<E, A>) => Exit<E2, A2>
  <E, A, E2, A2>(self: Exit<E, A>, onFailure: (e: E) => E2, onSuccess: (a: A) => A2): Exit<E2, A2>
}
```
