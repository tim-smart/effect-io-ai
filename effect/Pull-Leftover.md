Package: `effect`<br />
Module: `Pull`<br />

## Pull.Leftover

Extracts the leftover type from a Pull type.

**When to use**

Use to derive the completion leftover type from an existing `Pull` when
declaring reusable type aliases or helper signatures that preserve a pull's
done value.

**See**

- `Success` for extracting the pulled value type instead
- `Error` for extracting the ordinary failure type, excluding `Cause.Done`
- `Services` for extracting the required services type instead

**Signature**

```ts
type Leftover<P> = P extends Effect<infer _A, infer _E, infer _R> ? _E extends Cause.Done<infer _L> ? _L : never
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pull.ts#L96)

Since v4.0.0