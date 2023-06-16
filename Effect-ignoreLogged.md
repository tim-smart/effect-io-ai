# ignoreLogged

Returns a new effect that ignores the success or failure of this effect,
but which also logs failures at the Debug level, just in case the failure
turns out to be important.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.ignoreLogged`.

### Signature

```typescript
export declare const ignoreLogged: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, void>
```
