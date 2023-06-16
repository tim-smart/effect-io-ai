# daemonChildren

Returns a new workflow that will not supervise any fibers forked by this
workflow.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.daemonChildren`.

### Signature

```typescript
export declare const daemonChildren: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
```
