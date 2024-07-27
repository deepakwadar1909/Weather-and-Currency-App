import { LightningElement, track } from 'lwc';
import convertAmount from '@salesforce/apex/CurrencyConvertorController.convertAmount';

export default class CurrencyConversion extends LightningElement {
    sourceCurrency = 'USD';
    targetCurrency = 'INR';
    @track amount = '';
    @track convertedAmount;

    get options(){
        return [
            { label: 'US Dollar', value: 'USD' },
            { label: 'Great Britian Pound', value: 'GBP' },
            { label: 'Indian Rupee', value: 'INR' },
            { label: 'Afghan', value: 'AFN' },
            { label: 'Australian', value: 'AUD' },
            { label: 'Bangladeshi', value: 'BDT' },
            { label: 'Chinese', value: 'CNY' },
            { label: 'Hong Kong', value: 'HKD' },
            { label: 'Indonesian', value: 'IDR' },
            { label: 'Japanese', value: 'JPY' },
            { label: 'Nepalese', value: 'NPR' },
            { label: 'New Zealand', value: 'NZD' },
            { label: 'Pakistani', value: 'PKR' },
            { label: 'Singapore', value: 'SGD' },
            { label: 'South Korean', value: 'KRW' },
            { label: 'Sri Lankan', value: 'LKR' },
            { label: 'New Taiwan', value: 'TWD' },
            { label: 'Vietnamese', value: 'VND' }
        ];
    }

    sourceHandleChange(event){
        this.sourceCurrency = event.detail.value;
        console.log('@@Test sourceCurrency' + this.sourceCurrency);
    }

    sourceAmountChange(event){
        this.amount =  event.target.value;
        console.log('@@Test Amount' + this.amount);
    }

    targetHandleChange(event){
        this.targetCurrency = event.detail.value;
        console.log('@@Test targetCurrency' + this.targetCurrency);
    }

    handleConvert(){
        convertAmount({sourceCurrency:this.sourceCurrency,
            targetCurrency:this.targetCurrency,
            amount:this.amount
        }).then(result=>{
            this.convertedAmount = result;
        })
        .catch(error)
    }
}