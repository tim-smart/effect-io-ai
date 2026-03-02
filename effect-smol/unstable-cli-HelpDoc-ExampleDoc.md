Package: `effect`<br />
Module: `HelpDoc`<br />

## HelpDoc.ExampleDoc

Documentation for a command usage example

**Signature**

```ts
export interface ExampleDoc {
  /**
   * Command line invocation example
   */
  readonly command: string

  /**
   * Optional explanation for the example
   */
  readonly description?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HelpDoc.ts#L102)

Since v4.0.0