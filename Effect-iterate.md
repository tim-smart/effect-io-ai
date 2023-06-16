# iterate

Iterates with the specified effectual function. The moral equivalent of:

```ts
let s = initial

while (cont(s)) {
  s = body(s)
}

return s
```

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.iterate`.

### Signature

```typescript
export declare const iterate: <Z, R, E>(
  initial: Z,
  cont: (z: Z) => boolean,
  body: (z: Z) => Effect<R, E, Z>
) => Effect<R, E, Z>
```
