# raceAll

Returns an effect that races this effect with all the specified effects,
yielding the value of the first effect to succeed with a value. Losers of
the race will be interrupted immediately

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const raceAll: <R, E, A>(effects: Iterable<Effect<R, E, A>>) => Effect<R, E, A>
```
