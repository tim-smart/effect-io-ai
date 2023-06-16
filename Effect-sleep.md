# sleep

Returns an effect that suspends for the specified duration. This method is
asynchronous, and does not actually block the fiber executing the effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.sleep`.

### Signature

```typescript
export declare const sleep: (duration: Duration.Duration) => Effect<never, never, void>
```
