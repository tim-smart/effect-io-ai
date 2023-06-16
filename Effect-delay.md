# delay

Returns an effect that is delayed from this effect by the specified
`Duration`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.delay`.

### Signature

```typescript
export declare const delay: {
  (duration: Duration.Duration): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, duration: Duration.Duration): Effect<R, E, A>
}
```
