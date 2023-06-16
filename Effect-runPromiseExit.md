# runPromiseExit

Runs an `Effect` workflow, returning a `Promise` which resolves with the
`Exit` value of the workflow.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.runPromiseExit`.

### Signature

```typescript
export declare const runPromiseExit: <E, A>(effect: Effect<never, E, A>) => Promise<Exit.Exit<E, A>>
```
