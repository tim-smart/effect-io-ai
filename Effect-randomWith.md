# randomWith

Retreives the `Random` service from the context and uses it to run the
specified workflow.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const randomWith: <R, E, A>(f: (random: Random.Random) => Effect<R, E, A>) => Effect<R, E, A>
```
