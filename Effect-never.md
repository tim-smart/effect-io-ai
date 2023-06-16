# never

Returns a effect that will never produce anything. The moral equivalent of
`while(true) {}`, only without the wasted CPU cycles.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const never: (_: void) => Effect<never, never, never>
```
