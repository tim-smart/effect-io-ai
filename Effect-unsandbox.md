# unsandbox

The inverse operation `sandbox(effect)`

Terminates with exceptions on the `Left` side of the `Either` error, if it
exists. Otherwise extracts the contained `Effect< R, E, A>`

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const unsandbox: <R, E, A>(self: Effect<R, Cause.Cause<E>, A>) => Effect<R, E, A>
```
