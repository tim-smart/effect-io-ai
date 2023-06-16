# async

Imports an asynchronous side-effect into a pure `Effect` value. See
`asyncMaybe` for the more expressive variant of this function that can
return a value synchronously.

The callback function `Effect<R, E, A> => void` must be called at most once.

The `FiberId` of the fiber that may complete the async callback may be
provided to allow for better diagnostics.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const async: <R, E, A>(
  register: (callback: (_: Effect<R, E, A>) => void) => void,
  blockingOn?: FiberId.FiberId
) => Effect<R, E, A>
```
