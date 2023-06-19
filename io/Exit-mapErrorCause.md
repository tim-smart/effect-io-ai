# mapErrorCause

Maps over the `Cause` contained in the `Failure` of the specified exit using
the provided function.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const mapErrorCause: {
  <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <A>(self: Exit<E, A>) => Exit<E2, A>
  <E, A, E2>(self: Exit<E, A>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Exit<E2, A>
}
```
