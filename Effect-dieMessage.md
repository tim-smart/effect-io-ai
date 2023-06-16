# dieMessage

Returns an effect that dies with a `RuntimeException` having the specified
text message. This method can be used for terminating a fiber because a
defect has been detected in the code.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const dieMessage: (message: string) => Effect<never, never, never>
```
