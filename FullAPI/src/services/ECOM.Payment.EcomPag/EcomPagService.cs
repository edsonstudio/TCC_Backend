namespace ECOM.Payment.EcomPag
{
    public class EcomPagService
    {
        public readonly string ApiKey;
        public readonly string EncryptionKey;

        public EcomPagService(string apiKey, string encryptionKey)
        {
            ApiKey = apiKey;
            EncryptionKey = encryptionKey;
        }
    }
}