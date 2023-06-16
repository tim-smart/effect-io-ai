# allowInterrupt

This function checks if any fibers are attempting to interrupt the current
fiber, and if so, performs self-interruption.

Note that this allows for interruption to occur in uninterruptible regions.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const allowInterrupt: (_: void) => Effect<never, never, void>
```
