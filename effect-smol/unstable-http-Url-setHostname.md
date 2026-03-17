Package: `effect`<br />
Module: `Url`<br />

## Url.setHostname

Updates the domain of the URL without modifying the port.

**Signature**

```ts
declare const setHostname: { (hostname: string): (url: URL) => URL; (url: URL, hostname: string): URL; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Url.ts#L139)

Since v4.0.0