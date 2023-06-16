# never

Returns a effect that will never produce anything. The moral equivalent of
`while(true) {}`, only without the wasted CPU cycles.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const never: (_: void) => Effect<never, never, never>
```
