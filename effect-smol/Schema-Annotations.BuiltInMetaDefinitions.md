Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.BuiltInMetaDefinitions

This MUST NOT be extended with custom meta.

**Signature**

```ts
export interface BuiltInMetaDefinitions {
    // String Meta
    readonly isStringFinite: {
      readonly _tag: "isStringFinite"
      readonly regExp: globalThis.RegExp
    }
    readonly isStringBigInt: {
      readonly _tag: "isStringBigInt"
      readonly regExp: globalThis.RegExp
    }
    readonly isStringSymbol: {
      readonly _tag: "isStringSymbol"
      readonly regExp: globalThis.RegExp
    }
    readonly isMinLength: {
      readonly _tag: "isMinLength"
      readonly minLength: number
    }
    readonly isMaxLength: {
      readonly _tag: "isMaxLength"
      readonly maxLength: number
    }
    readonly isLengthBetween: {
      readonly _tag: "isLengthBetween"
      readonly minimum: number
      readonly maximum: number
    }
    readonly isPattern: {
      readonly _tag: "isPattern"
      readonly regExp: globalThis.RegExp
    }
    readonly isTrimmed: {
      readonly _tag: "isTrimmed"
      readonly regExp: globalThis.RegExp
    }
    readonly isUUID: {
      readonly _tag: "isUUID"
      readonly regExp: globalThis.RegExp
      readonly version: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | undefined
    }
    readonly isULID: {
      readonly _tag: "isULID"
      readonly regExp: globalThis.RegExp
    }
    readonly isBase64: {
      readonly _tag: "isBase64"
      readonly regExp: globalThis.RegExp
    }
    readonly isBase64Url: {
      readonly _tag: "isBase64Url"
      readonly regExp: globalThis.RegExp
    }
    readonly isStartsWith: {
      readonly _tag: "isStartsWith"
      readonly startsWith: string
      readonly regExp: globalThis.RegExp
    }
    readonly isEndsWith: {
      readonly _tag: "isEndsWith"
      readonly endsWith: string
      readonly regExp: globalThis.RegExp
    }
    readonly isIncludes: {
      readonly _tag: "isIncludes"
      readonly includes: string
      readonly regExp: globalThis.RegExp
    }
    readonly isUppercased: {
      readonly _tag: "isUppercased"
      readonly regExp: globalThis.RegExp
    }
    readonly isLowercased: {
      readonly _tag: "isLowercased"
      readonly regExp: globalThis.RegExp
    }
    readonly isCapitalized: {
      readonly _tag: "isCapitalized"
      readonly regExp: globalThis.RegExp
    }
    readonly isUncapitalized: {
      readonly _tag: "isUncapitalized"
      readonly regExp: globalThis.RegExp
    }
    // Number Meta
    readonly isFinite: {
      readonly _tag: "isFinite"
    }
    readonly isInt: {
      readonly _tag: "isInt"
    }
    readonly isMultipleOf: {
      readonly _tag: "isMultipleOf"
      readonly divisor: number
    }
    readonly isGreaterThan: {
      readonly _tag: "isGreaterThan"
      readonly exclusiveMinimum: number
    }
    readonly isGreaterThanOrEqualTo: {
      readonly _tag: "isGreaterThanOrEqualTo"
      readonly minimum: number
    }
    readonly isLessThan: {
      readonly _tag: "isLessThan"
      readonly exclusiveMaximum: number
    }
    readonly isLessThanOrEqualTo: {
      readonly _tag: "isLessThanOrEqualTo"
      readonly maximum: number
    }
    readonly isBetween: {
      readonly _tag: "isBetween"
      readonly minimum: number
      readonly maximum: number
      readonly exclusiveMinimum?: boolean | undefined
      readonly exclusiveMaximum?: boolean | undefined
    }
    // BigInt Meta
    readonly isGreaterThanBigInt: {
      readonly _tag: "isGreaterThanBigInt"
      readonly exclusiveMinimum: bigint
    }
    readonly isGreaterThanOrEqualToBigInt: {
      readonly _tag: "isGreaterThanOrEqualToBigInt"
      readonly minimum: bigint
    }
    readonly isLessThanBigInt: {
      readonly _tag: "isLessThanBigInt"
      readonly exclusiveMaximum: bigint
    }
    readonly isLessThanOrEqualToBigInt: {
      readonly _tag: "isLessThanOrEqualToBigInt"
      readonly maximum: bigint
    }
    readonly isBetweenBigInt: {
      readonly _tag: "isBetweenBigInt"
      readonly minimum: bigint
      readonly maximum: bigint
      readonly exclusiveMinimum?: boolean | undefined
      readonly exclusiveMaximum?: boolean | undefined
    }
    // Date Meta
    readonly isDateValid: {
      readonly _tag: "isDateValid"
    }
    readonly isGreaterThanDate: {
      readonly _tag: "isGreaterThanDate"
      readonly exclusiveMinimum: globalThis.Date
    }
    readonly isGreaterThanOrEqualToDate: {
      readonly _tag: "isGreaterThanOrEqualToDate"
      readonly minimum: globalThis.Date
    }
    readonly isLessThanDate: {
      readonly _tag: "isLessThanDate"
      readonly exclusiveMaximum: globalThis.Date
    }
    readonly isLessThanOrEqualToDate: {
      readonly _tag: "isLessThanOrEqualToDate"
      readonly maximum: globalThis.Date
    }
    readonly isBetweenDate: {
      readonly _tag: "isBetweenDate"
      readonly minimum: globalThis.Date
      readonly maximum: globalThis.Date
      readonly exclusiveMinimum?: boolean | undefined
      readonly exclusiveMaximum?: boolean | undefined
    }
    // Objects Meta
    readonly isMinProperties: {
      readonly _tag: "isMinProperties"
      readonly minProperties: number
    }
    readonly isMaxProperties: {
      readonly _tag: "isMaxProperties"
      readonly maxProperties: number
    }
    readonly isPropertiesLengthBetween: {
      readonly _tag: "isPropertiesLengthBetween"
      readonly minimum: number
      readonly maximum: number
    }
    readonly isPropertyNames: {
      readonly _tag: "isPropertyNames"
      readonly propertyNames: AST.AST
    }
    // Arrays Meta
    readonly isUnique: {
      readonly _tag: "isUnique"
    }
    // Declaration Meta
    readonly isMinSize: {
      readonly _tag: "isMinSize"
      readonly minSize: number
    }
    readonly isMaxSize: {
      readonly _tag: "isMaxSize"
      readonly maxSize: number
    }
    readonly isSizeBetween: {
      readonly _tag: "isSizeBetween"
      readonly minimum: number
      readonly maximum: number
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9468)

Since v4.0.0