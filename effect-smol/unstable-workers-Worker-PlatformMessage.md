Package: `effect`<br />
Module: `Worker`<br />

## Worker.PlatformMessage

Internal worker platform protocol message: `[0]` signals readiness and
`[1, payload]` carries data.

**Signature**

```ts
type PlatformMessage = readonly [ready: 0] | readonly [data: 1, unknown]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Worker.ts#L120)

Since v4.0.0