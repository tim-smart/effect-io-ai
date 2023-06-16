# ignore

Returns a new effect that ignores the success or failure of this effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.ignore`.

### Signature

```typescript
export declare const ignore: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, void>
```
